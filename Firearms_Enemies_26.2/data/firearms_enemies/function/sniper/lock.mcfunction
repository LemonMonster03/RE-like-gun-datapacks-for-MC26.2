function firearms_enemies:marker/select_aim
execute if entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] run function firearms_enemies:sniper/lock_apply
execute unless entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] run function firearms_enemies:target/release_silent
tag @e remove fge.aim_current
