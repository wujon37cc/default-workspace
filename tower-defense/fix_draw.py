with open('tower-defense/tower-defense.html','r') as f: s=f.read()
s = s.replace('ctx.fillRect(e.x,e.y,20,20); ctx.fillStyle=\'#fff\'; ctx.font=\'10px sans-serif\'; ctx.fillText(\'E\',e.x+6,e.y+14);',
              'ctx.beginPath(); ctx.arc(e.x+10,e.y+10,12,0,Math.PI*2); ctx.fillStyle="#f44"; ctx.fill(); ctx.strokeStyle="#fff"; ctx.lineWidth=2; ctx.stroke(); ctx.fillStyle="#fff"; ctx.font="12px sans-serif"; ctx.fillText("E",e.x+6,e.y+14);')
with open('tower-defense/tower-defense.html','w') as f: f.write(s)
print('draw fixed')
