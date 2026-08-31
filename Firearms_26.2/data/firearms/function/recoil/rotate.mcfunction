# A marker converts integer millidegrees into exact float rotation without constructing decimal macros.
kill @e[type=minecraft:marker,tag=fg.recoil_tmp]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fg.recoil_tmp']}
execute store result entity @e[type=minecraft:marker,tag=fg.recoil_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[0] float 0.001 run scoreboard players get @s fg.yaw
execute store result entity @e[type=minecraft:marker,tag=fg.recoil_tmp,limit=1,sort=nearest,distance=..0.1] Rotation[1] float 0.001 run scoreboard players get @s fg.pitch
execute rotated as @e[type=minecraft:marker,tag=fg.recoil_tmp,limit=1,sort=nearest,distance=..0.1] run rotate @s ~ ~
kill @e[type=minecraft:marker,tag=fg.recoil_tmp]
