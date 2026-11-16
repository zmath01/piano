const {chromium}=require('playwright');
const fs=require('node:fs'),path=require('node:path'),assert=require('node:assert/strict');
const ROOT=path.resolve(__dirname,'../..'),OUT=path.join(ROOT,'verification');
(async()=>{
 const browser=await chromium.launch({headless:true,args:['--no-sandbox','--disable-dev-shm-usage','--disable-webgl','--disable-gpu'],env:{...process.env,FONTCONFIG_FILE:path.join(__dirname,'fontconfig.conf')}});
 const context=await browser.newContext({viewport:{width:1440,height:900}});await context.setOffline(true);
 const page=await context.newPage(),errors=[],requests=[];page.on('pageerror',e=>errors.push(e.message));page.on('request',r=>{if(/^https?:/.test(r.url()))requests.push(r.url())});
 await page.goto('file://'+path.join(ROOT,'index.html'));await page.waitForTimeout(250);
 assert.equal(await page.evaluate(()=>bachLibrary.works.length),153);
 await page.locator('[data-collection=wtc1]').click();
 assert.equal(await page.locator('#movement option').count(),48);
 await page.locator('#movement').selectOption('wtc1-fugue-2');
 assert.equal(await page.evaluate(()=>score.catalogue),'BWV 847');
 await page.getByRole('button',{name:'Play BWV 847',exact:true}).click();await page.waitForTimeout(350);
 assert.equal(await page.evaluate(()=>transport.playing),true);
 await page.getByRole('button',{name:'Pause BWV 847',exact:true}).click();
 const cue=await page.evaluate(()=>score.cues.find(c=>c.at>0));assert.ok(cue);
 await page.evaluate(async at=>{await transport.seek(at/1000+0.01)},cue.at);await page.waitForTimeout(200);
 assert.ok((await page.locator('#cue-title').textContent()).length>0);
 assert.ok(await page.evaluate(()=>Math.abs(score.cues[study.cueIndex].at/1000-transport.position())<0.1));
 await page.getByRole('button',{name:'Loop fragment',exact:true}).click();
 assert.equal(await page.locator('#loop-cue').getAttribute('aria-pressed'),'true');
 await page.evaluate(async()=>{await transport.seek(transport.loopRange[1]-0.025)});await page.waitForTimeout(280);
 assert.ok(await page.evaluate(()=>transport.playing&&transport.position()<transport.loopRange[1]));
 await page.getByRole('button',{name:'Loop fragment',exact:true}).click();
 await page.getByRole('button',{name:'Pause BWV 847',exact:true}).click();
 await page.getByRole('button',{name:'Solo part 1',exact:true}).click();
 assert.equal(await page.evaluate(()=>transport.muted.size),await page.evaluate(()=>score.tracks.length-1));
 await page.getByRole('button',{name:'Hear all',exact:true}).click();assert.equal(await page.evaluate(()=>transport.muted.size),0);
 const transformChecks=await page.evaluate(()=>{
  const original=study.labData(false),base=original[0][1];
  document.getElementById('lab-mode').value='invert';document.getElementById('lab-shift').value='0';document.getElementById('lab-scale').value='1';
  const inverted=study.labData(true);
  const inversion=inverted.every((n,i)=>n[1]===2*base-original[i][1]&&n[0]===original[i][0]&&n[2]===original[i][2]);
  document.getElementById('lab-mode').value='retrograde';const retrograde=study.labData(true),L=Math.max(...original.map(n=>n[0]+n[2]));
  const reversal=original.every(n=>retrograde.some(r=>Math.abs(r[0]-(L-n[0]-n[2]))<1e-8&&r[1]===n[1]&&r[2]===n[2]));
  document.getElementById('lab-mode').value='augment';document.getElementById('lab-scale').value='2';
  const dilation=study.labData(true).every((n,i)=>n[0]===original[i][0]*2&&n[2]===original[i][2]*2&&n[1]===original[i][1]);
  study.drawLab();return {inversion,reversal,dilation};
 });assert.deepEqual(transformChecks,{inversion:true,reversal:true,dilation:true});
 await page.getByRole('button',{name:'Hear transform',exact:true}).click();
 assert.ok(await page.evaluate(()=>[...audio.voices].some(v=>v.group==='lab')));
 assert.equal(await page.evaluate(()=>transport.playing),false);
 await page.getByRole('button',{name:'Stop',exact:true}).click();await page.waitForTimeout(100);
 assert.equal(await page.evaluate(()=>[...audio.voices].filter(v=>v.group==='lab').length),0);
 await page.locator('[data-collection=art]').click();assert.equal(await page.locator('#movement option').count(),22);
 await page.locator('#movement').selectOption('art-16-rectus');assert.equal(await page.locator('#compare-pair').isVisible(),true);
 await page.getByRole('button',{name:'Compare pair',exact:true}).click();assert.equal(await page.evaluate(()=>score.id),'art-16-inversus');
 await page.locator('[data-collection=goldberg]').click();assert.equal(await page.locator('#movement option').count(),32);
 await page.locator('#variation-buttons button').filter({hasText:/^15$/}).click();assert.equal(await page.evaluate(()=>score.id),'goldberg-15');
 assert.ok((await page.locator('#context-body').textContent()).includes('contrary motion'));
 await page.locator('#variation-buttons button').filter({hasText:/^30$/}).click();assert.ok((await page.locator('#context-title').textContent()).includes('Quodlibet'));
 await page.locator('[data-collection=wtc2]').click();assert.equal(await page.locator('#movement option').count(),50);
 // Every embedded track must load its controls and analysis without an exception.
 const loaded=await page.evaluate(()=>{
  let count=0;
  for(const collection of Object.keys(COLLECTIONS)){
   study.setCollection(collection);
   for(const work of [...study.works]){study.load(work.id);if(score.id!==work.id||!document.querySelector('.piece-info h2').textContent)throw Error(work.id);count++;}
  }return count;
 });assert.equal(loaded,153);
 await page.evaluate(()=>{study.setCollection('art','art-7-contrapunctusVII');document.getElementById('lab-mode').value='invert';document.getElementById('lab-scale').value='1';study.drawLab()});
 await page.locator('#study').screenshot({path:path.join(OUT,'counterpoint-desktop.png')});
 await page.screenshot({path:path.join(OUT,'library-desktop.png'),fullPage:true});
 const responsive=[];
 for(const viewport of [{width:390,height:844},{width:320,height:740}]){
  await page.setViewportSize(viewport);await page.waitForTimeout(150);
  const overflow=await page.evaluate(()=>document.documentElement.scrollWidth>innerWidth);assert.equal(overflow,false);
  await page.screenshot({path:path.join(OUT,viewport.width===390?'counterpoint-mobile.png':'counterpoint-small.png'),fullPage:true});responsive.push({viewport,overflow});
 }
 assert.deepEqual(errors,[]);assert.deepEqual(requests,[]);
 const result={status:'pass',loaded,transformChecks,responsive,errors,requests,checks:['all collection selectors and 153 track loads','WTC playback','cue auto-follow','cue loop wraps','part solo and restore','pitch inversion formula','note-interval retrograde formula','time dilation formula','transformed motif audition and stop','mirror version compare','Goldberg canon ladder and quodlibet distinction','offline responsive layouts']};
 fs.writeFileSync(path.join(OUT,'study-report.json'),JSON.stringify(result,null,2)+'\n');console.log(JSON.stringify(result,null,2));await browser.close();
})().catch(e=>{console.error(e);process.exit(1)});
