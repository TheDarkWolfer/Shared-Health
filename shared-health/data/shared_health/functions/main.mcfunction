execute store result bossbar minecraft:globalhp value run scoreboard players get @r globalHP
execute as @a[scores={HP=0..}] run scoreboard players operation @a globalHP -= @s HP
execute as @a[scores={dmgDealt=0..}] run scoreboard players operation @a globalHP += @s dmgDealt
scoreboard players reset @a[scores={dmgDealt=0..}] dmgDealt
effect give @a instant_health 1 5 true
scoreboard players reset @a[scores={HP=0..}] HP
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players add @a globalHP 500
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect clear @s regeneration
execute as @a[nbt={active_effects:[{id:"minecraft:resistance"}]}] run scoreboard players add @a globalHP 1500
execute as @a[nbt={active_effects:[{id:"minecraft:resistance"}]}] run effect clear @s resistance
execute as @a[nbt={active_effects:[{id:"minecraft:absorption",amplifier:3b}]}] run scoreboard players add @a globalHP 3000
execute as @a[nbt={active_effects:[{id:"minecraft:absorption",amplifier:3b}]}] run effect clear @s minecraft:absorption
scoreboard players set @a[scores={globalHP=50000..}] globalHP 50000
execute as @a at @s if entity @s[y=50,dy=1000,nbt={Dimension:"minecraft:overworld"}] run spawnpoint @s ~ ~ ~
execute as @a[scores={globalHP=..0},nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] at @s run function shared_health:totem_effect
execute as @a[scores={globalHP=..0},nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] at @s run function shared_health:totem_effect
gamemode spectator @a[scores={globalHP=..0},tag=!admin]
bossbar set minecraft:globalhp name ["",{"text":"[","bold":true},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"] ","bold":true},{"text":"Global HP ","bold":true,"color":"dark_red"},{"text":"| ","bold":true},{"score":{"name":"@p","objective":"globalHP"},"bold":true,"color":"dark_red"},{"text":"/","bold":true,"color":"gold"},{"text":"50000","bold":true,"color":"dark_red"},{"text":" [","bold":true},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"]","bold":true}]