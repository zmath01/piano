const { chromium } = require('playwright');
const fs = require('node:fs');
const path = require('node:path');
const assert = require('node:assert/strict');
const ROOT = path.resolve(__dirname, '../..');
const OUT = path.join(ROOT, 'verification');
fs.mkdirSync(OUT, {recursive:true});

(async () => {
  const browser = await chromium.launch({headless:true, args:[
    '--no-sandbox','--disable-dev-shm-usage','--use-gl=angle',
    '--use-angle=swiftshader','--enable-unsafe-swiftshader',
    '--disable-gpu','--num-raster-threads=1',
  ], env:{...process.env}});
  const context = await browser.newContext({viewport:{width:1440,height:900}});
  const page = await context.newPage();
  const errors = [], requests = [];
  page.on('pageerror', e => errors.push(e.message));
  page.on('request', r => { if (/^https?:/.test(r.url())) requests.push(r.url()); });
  await context.setOffline(true);
  await page.goto('file://' + path.join(ROOT, 'index.html'));
  await page.waitForTimeout(800);
  const initial = await page.evaluate(() => ({
    sceneReady:!!scene, renderer:scene?.renderer.isSoftware?'Canvas 2D fallback':'WebGL', keys:scene?.keys.size, scoreNotes:score.notes.length,
    duration:score.duration, overflow:document.documentElement.scrollWidth>innerWidth,
    canvas:document.getElementById('piano-canvas').getBoundingClientRect().toJSON(),
  }));
  console.log(JSON.stringify({initial,errors,requests,hidden:await page.locator('#piano-canvas').getAttribute('hidden'),sceneMessage:await page.locator('#scene-message').textContent()}));
  await page.screenshot({path:path.join(OUT,'desktop.png'),fullPage:true});
  assert.equal(initial.scoreNotes,1529);
  assert.equal(initial.duration,157795);
  assert.equal(initial.overflow,false);
  assert.equal(initial.sceneReady,true,'3D scene must initialize');
  assert.equal(initial.keys,88);
  await page.getByRole('button',{name:'Play BWV 617',exact:true}).click();
  await page.waitForTimeout(1600);
  const playing = await page.evaluate(() => ({playing:transport.playing,
    position:transport.position(),active:transport.activeNotes(),
    voices:audio.voices.size,ctx:audio.ctx.state,
    error:document.getElementById('error').textContent}));
  console.log(JSON.stringify({playing}));
  assert.equal(playing.playing,true); assert.equal(playing.ctx,'running');
  assert.ok(playing.position>1); assert.ok(playing.voices>0);
  await page.screenshot({path:path.join(OUT,'playing.png'),fullPage:true});
  await page.getByRole('button',{name:'Pause BWV 617',exact:true}).click();
  const paused = await page.evaluate(() => transport.position());
  await page.waitForTimeout(300);
  assert.equal(await page.evaluate(() => transport.position()),paused);
  assert.equal(await page.evaluate(() => audio.voices.size),0);
  await page.keyboard.down('a'); await page.keyboard.down('e');
  await page.waitForTimeout(100);
  const chord = await page.evaluate(() => [...held.values()].map(n=>n.note).sort());
  assert.deepEqual(chord,[60,63]);
  await page.keyboard.up('a'); await page.keyboard.up('e');
  await page.waitForTimeout(250);
  assert.equal(await page.evaluate(() => held.size),0);
  assert.equal(await page.evaluate(() => audio.voices.size),0);
  await page.getByRole('button',{name:/^Sustain/}).click();
  await page.keyboard.down('a'); await page.waitForTimeout(70); await page.keyboard.up('a');
  assert.equal(await page.evaluate(() => audio.pedalled.size),1);
  await page.getByRole('button',{name:/^Sustain/}).click(); await page.waitForTimeout(250);
  assert.equal(await page.evaluate(() => audio.voices.size),0);
  await page.getByLabel('Tempo',{exact:true}).selectOption('1.5');
  assert.equal(await page.evaluate(() => transport.rate),1.5);
  await page.locator('#seek').evaluate(el => { el.value='500'; el.dispatchEvent(new Event('input')); el.dispatchEvent(new Event('change')); });
  await page.waitForTimeout(80);
  assert.ok(Math.abs(await page.evaluate(() => transport.position())-78.8975)<0.01);
  await page.getByRole('button',{name:'Play BWV 617',exact:true}).click();
  await page.waitForTimeout(500);
  assert.ok(await page.evaluate(() => transport.position())>79);
  await page.getByRole('button',{name:'Restart sample',exact:true}).click();
  await page.waitForTimeout(400);
  assert.ok(await page.evaluate(() => transport.position())<2);
  await page.getByRole('button',{name:'Pause BWV 617',exact:true}).click();
  await page.getByLabel('Volume',{exact:true}).evaluate(el => {el.value='0'; el.dispatchEvent(new Event('input'));});
  assert.equal(await page.evaluate(() => audio.volume),0);
  await page.getByLabel('Volume',{exact:true}).evaluate(el => {el.value='65'; el.dispatchEvent(new Event('input'));});
  await page.getByRole('button',{name:'About'}).click();
  assert.equal(await page.locator('#about').evaluate(el=>el.open),true);
  await page.keyboard.press('Escape');
  assert.equal(await page.locator('#about').evaluate(el=>el.open),false);
  // Project the C4 key's front surface into screen coordinates, then raycast it.
  const keyPoint = await page.evaluate(() => {
    scene.scene.updateMatrixWorld();
    const key=scene.keys.get(60),p=new THREE.Vector3(0,0.13,1.5);
    key.mesh.localToWorld(p);p.project(scene.camera);
    const rect=scene.canvas.getBoundingClientRect();
    return {x:rect.x+(p.x+1)*rect.width/2,y:rect.y+(1-p.y)*rect.height/2};
  });
  await page.mouse.move(keyPoint.x,keyPoint.y); await page.mouse.down();
  await page.waitForTimeout(60);
  assert.deepEqual(await page.evaluate(() => [...held.values()].map(n=>n.note)),[60]);
  await page.mouse.up();
  await page.locator('#accessible-panel summary').click();
  await page.getByRole('button',{name:'C4',exact:true}).focus();
  await page.keyboard.down('Enter'); await page.waitForTimeout(80);
  assert.ok(await page.evaluate(() => [...held.values()].some(n=>n.note===60)));
  await page.keyboard.up('Enter'); await page.waitForTimeout(450);
  assert.equal(await page.evaluate(() => held.size),0);
  assert.equal(await page.evaluate(() => audio.voices.size),0);
  await page.locator('#accessible-panel summary').click();
  await page.getByLabel('Tempo',{exact:true}).selectOption('1');
  await page.getByRole('button',{name:'Restart sample',exact:true}).click();
  const viewports=[];
  for(const viewport of [{width:390,height:844},{width:320,height:740}]) {
    await page.setViewportSize(viewport); await page.waitForTimeout(350);
    const layout=await page.evaluate(()=>({overflow:document.documentElement.scrollWidth>innerWidth,
      narrow:scene.narrow, cameraWidth:scene.camera.right-scene.camera.left}));
    assert.equal(layout.overflow,false);
    assert.equal(layout.narrow,true);
    await page.screenshot({path:path.join(OUT,viewport.width===390?'mobile.png':'small-mobile.png'),fullPage:true});
    viewports.push({viewport,layout});
  }
  await page.getByRole('button',{name:'Move up one octave'}).click();
  assert.equal(await page.evaluate(()=>register),72);
  await page.getByRole('button',{name:'Move down one octave'}).click();
  assert.equal(await page.evaluate(()=>register),60);
  // Verify the synthesized waveform has real signal and a finite bounded peak.
  const signal=await page.evaluate(()=>{
    const data=audio.bufferFor(60).getChannelData(0);
    let sum=0,peak=0;
    for(const x of data){sum+=x*x;peak=Math.max(peak,Math.abs(x));}
    return {rms:Math.sqrt(sum/data.length),peak,samples:data.length};
  });
  assert.ok(signal.rms>0.01&&signal.peak<1);
  await page.emulateMedia({reducedMotion:'reduce'});
  assert.equal(await page.evaluate(()=>scene.reducedMotion.matches),true);
  const fallbackPage=await context.newPage();
  await fallbackPage.addInitScript(()=>{
    const original=HTMLCanvasElement.prototype.getContext;
    HTMLCanvasElement.prototype.getContext=function(type,...args){return type.startsWith('webgl')?null:original.call(this,type,...args);};
    window.AudioContext=undefined; window.webkitAudioContext=undefined;
  });
  await fallbackPage.goto('file://'+path.join(ROOT,'index.html'));
  assert.equal(await fallbackPage.evaluate(()=>scene.renderer.isSoftware),true);
  await fallbackPage.getByRole('button',{name:'Play BWV 617',exact:true}).click();
  assert.equal(await fallbackPage.locator('#error').isVisible(),true);
  assert.ok((await fallbackPage.locator('#error').textContent()).includes('Web Audio is unavailable'));
  await fallbackPage.screenshot({path:path.join(OUT,'browser-fallback.png'),fullPage:true});
  await fallbackPage.close();
  assert.deepEqual(errors,[]); assert.deepEqual(requests,[]);
  const result={status:'pass',initial,playing,viewports,signal,
    checks:['local file offline load','88-key Three.js scene with Canvas 2D fallback','1529-note score identity',
    'play/pause and voice cleanup','keyboard polyphony','latched sustain and release',
    'tempo change','seek and active-note restoration','restart during playback',
    'volume','About dialog and Escape','3D raycast pointer input',
    'semantic key Enter input','register arrows','responsive layouts','synth waveform',
    'reduced motion preference','WebGL unavailable fallback','Web Audio unavailable error',
    'no uncaught page errors','zero runtime network requests'],errors,requests};
  fs.writeFileSync(path.join(OUT,'browser-report.json'),JSON.stringify(result,null,2)+'\n');
  console.log(JSON.stringify(result,null,2));
  await browser.close();
})().catch(error=>{console.error(error);process.exit(1);});
