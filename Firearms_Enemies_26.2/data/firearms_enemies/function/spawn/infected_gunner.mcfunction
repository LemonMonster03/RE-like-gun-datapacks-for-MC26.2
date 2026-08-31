tag @e remove fge.new
summon minecraft:husk ~ ~ ~ {Tags:['fge.new'],PersistenceRequired:1b,CustomName:{text:'感染枪手',color:'dark_red',bold:true},CustomNameVisible:1b}
attribute @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] minecraft:max_health base set 24
data merge entity @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] {Health:24.0f,HandDropChances:[0.0f,0.085f]}
item replace entity @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] weapon.mainhand with minecraft:stick[minecraft:max_stack_size=1,minecraft:custom_name={text:'感染者制式枪',color:'dark_gray',italic:false},minecraft:custom_data={firearms_enemy_weapon:{schema:1,id:'infected_gunner'}},minecraft:item_model='minecraft:crossbow'] 1
execute as @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] at @s run function firearms_enemies:spawn/register_infected_gunner
tag @e[type=minecraft:husk,tag=fge.new,limit=1,sort=nearest,distance=..1] add fge.infected_gunner
tag @e remove fge.new
