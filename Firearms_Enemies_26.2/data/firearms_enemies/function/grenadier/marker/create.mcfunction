function firearms_enemies:grenadier/marker/remove
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fge.throw_point','fge.throw_current']}
scoreboard players operation @e[type=minecraft:marker,tag=fge.throw_current,limit=1,sort=nearest,distance=..0.1] fg.actor = @s fg.actor
tag @e remove fge.throw_current
