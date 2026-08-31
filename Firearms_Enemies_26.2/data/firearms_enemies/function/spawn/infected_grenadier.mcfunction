tag @e remove fge.new
summon minecraft:husk ~ ~ ~ {Tags:['fge.new'],PersistenceRequired:1b,CustomName:{text:'感染投弹手',color:'dark_red',bold:true},CustomNameVisible:1b,HandDropChances:[0.0f,0.085f]}
attribute @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] minecraft:max_health base set 26
data merge entity @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] {Health:26.0f,HandDropChances:[0.0f,0.085f]}
item replace entity @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] weapon.mainhand with air
execute as @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] at @s run function firearms_enemies:spawn/register_infected_grenadier
tag @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] add fge.infected_grenadier
tag @e remove fge.new
