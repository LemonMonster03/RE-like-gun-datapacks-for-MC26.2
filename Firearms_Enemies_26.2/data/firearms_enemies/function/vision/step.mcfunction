# 0.5-block line of sight. Solid blocks stop before the target marker test can continue.
execute if block ~ ~ ~ #firearms_enemies:vision_passable if entity @e[type=minecraft:marker,tag=fge.los_eye,distance=..0.6,limit=1] run scoreboard players set @s fge.los 1
execute if score @s fge.los matches 0 if block ~ ~ ~ #firearms_enemies:vision_passable run scoreboard players add @s fge.lossteps 1
execute if score @s fge.los matches 0 if block ~ ~ ~ #firearms_enemies:vision_passable if score @s fge.lossteps < @s fge.losmax positioned ^ ^ ^0.5 run function firearms_enemies:vision/step
