function firearms_enemies:grenadier/marker/select
execute unless entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] run function firearms_enemies:grenadier/marker/create
function firearms_enemies:grenadier/marker/select
execute as @e[tag=fge.current_target,limit=1] at @s run tp @e[type=minecraft:marker,tag=fge.throw_current,limit=1] ~ ~0.1 ~
tag @e remove fge.throw_current
