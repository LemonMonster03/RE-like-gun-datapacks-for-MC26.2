scoreboard players operation #throw_actor fge.tmp = @s fg.actor
execute as @e[type=minecraft:marker,tag=fge.throw_point] if score @s fg.actor = #throw_actor fge.tmp run tag @s add fge.throw_current
