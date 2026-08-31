tag @e remove fge.aim_current
scoreboard players operation #aim_actor fge.tmp = @s fg.actor
execute as @e[type=minecraft:marker,tag=fge.aim_point] if score @s fg.actor = #aim_actor fge.tmp run tag @s add fge.aim_current
