scoreboard objectives add HP minecraft.custom:minecraft.damage_taken
scoreboard objectives add dmgDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add globalHP dummy
bossbar add globalhp ["",{"text":"[","bold":true},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"] ","bold":true},{"text":"Global HP ","bold":true,"color":"dark_red"},{"text":"| ","bold":true},{"score":{"name":"@p","objective":"globalHP"},"bold":true,"color":"dark_red"},{"text":"/","bold":true,"color":"gold"},{"text":"50000","bold":true,"color":"dark_red"},{"text":" [","bold":true},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"]","bold":true}]
bossbar set globalhp max 50000
bossbar set globalhp color red
bossbar set globalhp style progress
bossbar set globalhp visible true
bossbar set globalhp value 0