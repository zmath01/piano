'use strict';

// The same Three.js geometry and camera can be painted without a GPU. This
// keeps the instrument usable when an Android WebGL driver loses its context.
class CanvasPianoRenderer {
  constructor(canvas) {
    this.isSoftware = true;
    this.domElement = document.createElement('canvas');
    this.domElement.setAttribute('aria-hidden', 'true');
    this.domElement.style.cssText = 'position:absolute;inset:0;width:100%;height:100%;pointer-events:none';
    canvas.parentElement.append(this.domElement);
    this.ctx = this.domElement.getContext('2d');
    if (!this.ctx) throw new Error('Canvas drawing is unavailable');
    this.shadowMap = {};
    this.ratio = 1;
  }
  setPixelRatio(ratio) { this.ratio = ratio; }
  setSize(width, height) {
    this.width = width; this.height = height;
    this.domElement.width = Math.round(width * this.ratio);
    this.domElement.height = Math.round(height * this.ratio);
  }
  render(scene, camera) {
    const ctx = this.ctx, width = this.width, height = this.height;
    ctx.setTransform(this.ratio, 0, 0, this.ratio, 0, 0);
    ctx.clearRect(0, 0, width, height);
    scene.updateMatrixWorld(); camera.updateMatrixWorld();
    const view = camera.getWorldDirection(new THREE.Vector3()).negate();
    const light = new THREE.Vector3(-0.3, 0.9, 0.4).normalize();
    const faces = [];
    const screen = point => {
      const p = point.clone().project(camera);
      return [(p.x + 1) * width / 2, (1 - p.y) * height / 2];
    };
    const shadow = screen(new THREE.Vector3(0, -0.5, 0.4));
    const span = 30 / (camera.right - camera.left) * width;
    ctx.save();
    ctx.translate(shadow[0], shadow[1] + 13);
    ctx.scale(span / 2, 23);
    const gradient = ctx.createRadialGradient(0, 0, 0, 0, 0, 1);
    gradient.addColorStop(0, '#343c302c'); gradient.addColorStop(1, '#343c3000');
    ctx.fillStyle = gradient; ctx.fillRect(-1, -1, 2, 2); ctx.restore();
    scene.traverse(mesh => {
      if (!mesh.isMesh || mesh.geometry.type !== 'BoxGeometry') return;
      const {position, normal} = mesh.geometry.attributes;
      const indices = mesh.geometry.index;
      const normalMatrix = new THREE.Matrix3().getNormalMatrix(mesh.matrixWorld);
      for (let i = 0; i < indices.count; i += 6) {
        const n = new THREE.Vector3().fromBufferAttribute(normal, indices.getX(i)).applyNormalMatrix(normalMatrix);
        if (n.dot(view) <= 0.001) continue;
        const points = [i, i + 1, i + 4, i + 2].map(j =>
          new THREE.Vector3().fromBufferAttribute(position, indices.getX(j)).applyMatrix4(mesh.matrixWorld));
        const center = points.reduce((sum, p) => sum.add(p), new THREE.Vector3()).multiplyScalar(0.25);
        const depth = center.clone().applyMatrix4(camera.matrixWorldInverse).z;
        const color = mesh.material.color.clone().multiplyScalar(0.56 + Math.max(0, n.dot(light)) * 0.44);
        const note = mesh.userData.note;
        const layer = note ? ([1, 3, 6, 8, 10].includes(note % 12) ? 2 : 1) : 0;
        faces.push({depth, layer, points: points.map(screen), color: color.getStyle()});
      }
    });
    faces.sort((a, b) => a.layer - b.layer || a.depth - b.depth);
    for (const face of faces) {
      ctx.beginPath();
      face.points.forEach(([x, y], i) => i ? ctx.lineTo(x, y) : ctx.moveTo(x, y));
      ctx.closePath(); ctx.fillStyle = face.color; ctx.fill();
      ctx.strokeStyle = face.color; ctx.lineWidth = 0.45; ctx.stroke();
    }
  }
  dispose() { this.domElement.remove(); }
}

class PianoScene {
  constructor(canvas, software = false) {
    this.canvas = canvas;
    this.keys = new Map();
    this.meshes = [];
    this.pointer = new THREE.Vector2();
    this.ray = new THREE.Raycaster();
    this.renderer = software ? new CanvasPianoRenderer(canvas) : new THREE.WebGLRenderer({canvas, antialias: true, alpha: true, powerPreference: 'low-power'});
    this.renderer.setPixelRatio(Math.min(window.devicePixelRatio || 1, 1.75));
    this.renderer.shadowMap.enabled = true;
    this.renderer.shadowMap.type = THREE.PCFSoftShadowMap;
    this.renderer.outputColorSpace = THREE.SRGBColorSpace;
    this.renderer.toneMapping = THREE.ACESFilmicToneMapping;
    this.renderer.toneMappingExposure = 1.25;
    this.scene = new THREE.Scene();
    this.camera = new THREE.OrthographicCamera(-17, 17, 6, -6, 0.1, 120);
    this.camera.position.set(0, 17, 22);
    this.camera.lookAt(0, 0, 0);
    this.scene.add(new THREE.HemisphereLight(0xfff9ed, 0xb7b8ae, 2.7));
    const key = new THREE.DirectionalLight(0xfff6e5, 3.5);
    key.position.set(-10, 18, 8);
    key.castShadow = true;
    key.shadow.mapSize.set(1024, 1024);
    key.shadow.camera.left = -22; key.shadow.camera.right = 22;
    key.shadow.camera.top = 10; key.shadow.camera.bottom = -10;
    key.shadow.normalBias = 0.03;
    key.shadow.bias = -0.0002;
    this.scene.add(key);
    const fill = new THREE.DirectionalLight(0xf5f7ff, 1.5);
    fill.position.set(9, 8, -8); this.scene.add(fill);
    const wood = new THREE.MeshStandardMaterial({color: 0x313530, roughness: 0.68, metalness: 0.08});
    const rim = new THREE.Mesh(new THREE.BoxGeometry(30.12, 0.68, 5.3), wood);
    rim.position.set(0, -0.06, -0.08); rim.castShadow = true; rim.receiveShadow = true;
    this.scene.add(rim);
    const rail = new THREE.Mesh(new THREE.BoxGeometry(29.72, 0.36, 0.6), wood);
    rail.position.set(0, 0.42, -2.23); rail.castShadow = true;
    this.scene.add(rail);
    const felt = new THREE.Mesh(new THREE.BoxGeometry(29.3, 0.04, 0.065), new THREE.MeshStandardMaterial({color: 0x8f6f54, roughness: 1}));
    felt.position.set(0, 0.64, -1.94); this.scene.add(felt);
    const floor = new THREE.Mesh(new THREE.PlaneGeometry(160, 80), new THREE.ShadowMaterial({opacity: 0.13}));
    floor.rotation.x = -Math.PI / 2; floor.position.y = -0.52; floor.receiveShadow = true; this.scene.add(floor);
    const whiteGeometry = new THREE.BoxGeometry(0.543, 0.23, 4.4);
    const blackGeometry = new THREE.BoxGeometry(0.335, 0.34, 2.7);
    let whiteIndex = 0;
    for (let note = 21; note <= 108; note++) {
      const black = [1, 3, 6, 8, 10].includes(note % 12);
      const x = black ? (whiteIndex - 0.5) * 0.56 - 14.28 : whiteIndex * 0.56 - 14.28;
      if (!black) whiteIndex++;
      const material = new THREE.MeshStandardMaterial({color: black ? 0x222623 : 0xfaf7ee, roughness: black ? 0.42 : 0.3, metalness: 0.03});
      const mesh = new THREE.Mesh(black ? blackGeometry : whiteGeometry, material);
      const pivot = new THREE.Group();
      pivot.position.set(x, black ? 0.76 : 0.48, -2.0);
      mesh.position.z = black ? 1.35 : 2.2;
      mesh.castShadow = true; mesh.receiveShadow = true;
      mesh.userData.note = note;
      pivot.add(mesh); this.scene.add(pivot);
      this.keys.set(note, {pivot, mesh, black, value: 0, base: material.color.clone(), lit: false});
      this.meshes.push(mesh);
    }
    this.reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
    this.center = 60;
    this.resizeObserver = new ResizeObserver(() => this.resize());
    this.resizeObserver.observe(canvas.parentElement);
    this.resize();
  }
  resize() {
    const {width, height} = this.canvas.parentElement.getBoundingClientRect();
    if (!width || !height) return;
    this.renderer.setSize(width, height, false);
    this.narrow = width < 720;
    const worldWidth = this.narrow ? 9.3 : 32.8;
    const worldHeight = worldWidth * height / width;
    this.camera.left = -worldWidth / 2; this.camera.right = worldWidth / 2;
    this.camera.top = worldHeight / 2; this.camera.bottom = -worldHeight / 2;
    this.camera.updateProjectionMatrix();
    this.setRegister(this.center);
    this.dirty = true;
  }
  setRegister(note) {
    this.center = note;
    const x = this.narrow ? this.keys.get(Math.min(108, note + 7)).pivot.position.x : 0;
    this.camera.position.set(x, 17, 22);
    this.camera.lookAt(x, 0, 0);
    this.camera.updateMatrixWorld();
  }
  hit(clientX, clientY) {
    const rect = this.canvas.getBoundingClientRect();
    this.pointer.set((clientX - rect.left) / rect.width * 2 - 1, -(clientY - rect.top) / rect.height * 2 + 1);
    this.ray.setFromCamera(this.pointer, this.camera);
    this.scene.updateMatrixWorld();
    return this.ray.intersectObjects(this.meshes, false)[0]?.object.userData.note ?? null;
  }
  render(active, delta) {
    for (const [note, key] of this.keys) {
      const lit = active.has(note);
      const target = lit ? 1 : 0;
      key.value += (target - key.value) * (this.reducedMotion.matches ? 1 : Math.min(1, delta * 22));
      key.pivot.rotation.x = key.value * (key.black ? 0.035 : 0.028);
      if (lit !== key.lit) {
        key.mesh.material.color.copy(lit ? new THREE.Color(key.black ? 0x8d6548 : 0xd3ab81) : key.base);
        key.lit = lit;
      }
    }
    this.renderer.render(this.scene, this.camera);
  }
}
