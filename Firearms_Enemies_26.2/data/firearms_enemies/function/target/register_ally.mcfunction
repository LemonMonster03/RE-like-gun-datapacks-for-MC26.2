execute if data entity @s Health unless entity @s[type=minecraft:player] run function firearms:state/assign_actor
execute if data entity @s Health unless entity @s[type=minecraft:player] run tag @s add fge.player_ally
