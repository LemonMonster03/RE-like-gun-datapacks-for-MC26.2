# Public dimension entry point for custom dimensions.
tag @e remove fge.candidate
tag @e remove fge.probe
tag @e remove fge.current_target
tag @e remove fge.aim_current
tag @e remove fge.throw_current
kill @e[type=minecraft:marker,tag=fge.los_eye]
kill @e[type=minecraft:marker,tag=fge.rotation_tmp]
execute as @e[type=minecraft:marker,tag=fge.aim_point] at @s run function firearms_enemies:marker/cleanup
execute as @e[type=minecraft:marker,tag=fge.throw_point] at @s run function firearms_enemies:grenadier/marker/cleanup
execute as @e[tag=fge.shooter,tag=!fge.grenadier] at @s run function firearms_enemies:entity/tick
execute as @e[tag=fge.grenadier] at @s run function firearms_enemies:grenadier/tick
