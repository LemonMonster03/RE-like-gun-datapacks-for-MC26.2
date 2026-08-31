function firearms_enemies:marker/remove_aim
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fge.aim_point','fge.aim_current']}
scoreboard players operation @e[type=minecraft:marker,tag=fge.aim_current,limit=1,sort=nearest,distance=..0.1] fg.actor = @s fg.actor
