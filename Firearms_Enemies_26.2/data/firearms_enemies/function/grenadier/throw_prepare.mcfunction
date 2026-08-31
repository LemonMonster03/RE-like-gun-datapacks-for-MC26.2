function firearms_enemies:grenadier/marker/select
execute unless entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] run function firearms_enemies:target/release_silent
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] run function firearms_enemies:grenadier/throw_apply
tag @e remove fge.throw_current
