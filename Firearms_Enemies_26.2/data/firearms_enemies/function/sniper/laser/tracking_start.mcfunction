function firearms_enemies:marker/select_aim
scoreboard players set @s fge.lasersteps 1
scoreboard players operation @s fge.lasermax = @s fge.range
execute if entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] at @s anchored eyes facing entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] feet positioned ^ ^ ^1 run function firearms_enemies:sniper/laser/tracking_step
tag @e remove fge.aim_current
