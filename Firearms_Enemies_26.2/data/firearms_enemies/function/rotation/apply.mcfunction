kill @e[type=minecraft:marker,tag=fge.rotation_tmp]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fge.rotation_tmp']}
execute store result entity @e[type=minecraft:marker,tag=fge.rotation_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[0] float 0.001 run scoreboard players get @s fge.yaw
execute store result entity @e[type=minecraft:marker,tag=fge.rotation_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[1] float 0.001 run scoreboard players get @s fge.pitch
execute rotated as @e[type=minecraft:marker,tag=fge.rotation_tmp,limit=1,sort=nearest,distance=..0.1] run rotate @s ~ ~
kill @e[type=minecraft:marker,tag=fge.rotation_tmp]
