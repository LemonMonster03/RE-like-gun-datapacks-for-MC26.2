scoreboard players operation #aim_actor fge.tmp = @s fg.actor
scoreboard players set #aim_found fge.tmp 0
execute as @e[tag=fge.shooter] if score @s fg.actor = #aim_actor fge.tmp run scoreboard players set #aim_found fge.tmp 1
execute if score #aim_found fge.tmp matches 0 run kill @s
