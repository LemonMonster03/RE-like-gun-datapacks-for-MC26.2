function firearms_enemies:marker/select_aim
execute unless entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] run function firearms_enemies:marker/create_aim
function firearms_enemies:marker/select_aim
execute as @e[tag=fge.current_target,limit=1] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=minecraft:marker,tag=fge.aim_current,limit=1] ~ ~ ~
scoreboard players operation @s fge.tracknext = #now fge.now
scoreboard players operation @s fge.tracknext += @s fge.track
execute if score @s fge.state matches 1 if entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] anchored eyes run rotate @s facing entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] feet
execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/sample_throw
tag @e remove fge.aim_current
