kill @e[type=minecraft:marker,tag=fge.los_eye]
execute as @e[tag=fge.vision_target,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:['fge.los_eye']}
scoreboard players set @s fge.los 0
scoreboard players set @s fge.lossteps 0
scoreboard players operation @s fge.losmax = @s fge.acquire
scoreboard players operation @s fge.losmax *= #two fge.const
scoreboard players add @s fge.losmax 2
execute at @s anchored eyes positioned ^ ^ ^ facing entity @e[type=minecraft:marker,tag=fge.los_eye,limit=1] feet run function firearms_enemies:vision/step
kill @e[type=minecraft:marker,tag=fge.los_eye]
