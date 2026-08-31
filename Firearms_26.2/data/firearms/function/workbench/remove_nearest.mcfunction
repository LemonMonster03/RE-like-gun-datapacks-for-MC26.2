tag @e[tag=fg.wb_removing] remove fg.wb_removing
tag @e[type=minecraft:marker,tag=fg.wb_core,distance=..8,sort=nearest,limit=1] add fg.wb_removing
execute unless entity @e[tag=fg.wb_removing,limit=1] run tellraw @s {text:'8 格内没有改造台。',color:'red'}
execute as @e[type=minecraft:marker,tag=fg.wb_removing,limit=1] at @s run function firearms:workbench/admin/remove_core
