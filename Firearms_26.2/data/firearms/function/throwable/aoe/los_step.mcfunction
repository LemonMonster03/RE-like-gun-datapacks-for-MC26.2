# The ray advances 0.5 blocks and stops at the first non-passable block.
execute if block ~ ~ ~ #firearms:blast_passable if entity @e[type=minecraft:marker,tag=fg.aoe_eye,distance=..0.6,limit=1] run scoreboard players set @s fg.thlos 1
execute if score @s fg.thlos matches 0 if block ~ ~ ~ #firearms:blast_passable run scoreboard players add @s fg.thsteps 1
execute if score @s fg.thlos matches 0 if block ~ ~ ~ #firearms:blast_passable if score @s fg.thsteps < @s fg.thmax positioned ^ ^ ^0.5 run function firearms:throwable/aoe/los_step
