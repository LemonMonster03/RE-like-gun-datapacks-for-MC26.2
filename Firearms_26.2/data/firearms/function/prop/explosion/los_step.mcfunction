execute if entity @e[type=minecraft:marker,tag=fg.prop_target,distance=..0.6,limit=1] run scoreboard players set @s fg.plos 1
execute if score @s fg.plos matches 0 if block ~ ~ ~ #firearms:blast_passable run scoreboard players add @s fg.psteps 1
execute if score @s fg.plos matches 0 if block ~ ~ ~ #firearms:blast_passable if score @s fg.psteps < @s fg.pmax positioned ^ ^ ^0.5 run function firearms:prop/explosion/los_step
