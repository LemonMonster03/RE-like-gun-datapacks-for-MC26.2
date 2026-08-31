scoreboard players operation #throw_actor fge.tmp = @s fg.actor
scoreboard players set #throw_found fge.tmp 0
execute as @e[tag=fge.grenadier] if score @s fg.actor = #throw_actor fge.tmp run scoreboard players set #throw_found fge.tmp 1
execute if score #throw_found fge.tmp matches 0 run kill @s
