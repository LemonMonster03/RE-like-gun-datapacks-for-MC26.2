tag @e[tag=fg.prop_focus] remove fg.prop_focus
tag @e[type=minecraft:marker,tag=fg.oil_barrel_core,distance=..6,sort=nearest,limit=1] add fg.prop_focus
execute unless entity @e[tag=fg.prop_focus,limit=1] run tellraw @s {text:'6 格内没有爆炸油桶。',color:'red'}
execute if entity @e[tag=fg.prop_focus,limit=1] run tellraw @s {text:'最近的爆炸油桶已无害移除。',color:'yellow'}
execute as @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=fg.prop_focus,limit=1] at @s run function firearms:prop/oil_barrel/remove_core
tag @e[tag=fg.prop_focus] remove fg.prop_focus
