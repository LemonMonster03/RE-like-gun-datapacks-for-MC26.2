function firearms:shot/scatter
scoreboard players operation @s fg.yaw += @s fg.baseyaw
scoreboard players operation @s fg.pitch += @s fg.basepitch
execute if score @s fg.pitch matches ..-90001 run scoreboard players set @s fg.pitch -90000
execute if score @s fg.pitch matches 90001.. run scoreboard players set @s fg.pitch 90000
execute store result entity @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[0] float 0.001 run scoreboard players get @s fg.yaw
execute store result entity @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[1] float 0.001 run scoreboard players get @s fg.pitch
execute at @s rotated as @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1,sort=nearest,distance=..0.1] anchored eyes positioned ^ ^ ^0.35 run function firearms:ray/start
scoreboard players add @s fg.pellet 1
execute if score @s fg.pellet < @s fg.pellets run function firearms:shot/pellet
