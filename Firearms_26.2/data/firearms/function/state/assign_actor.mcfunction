# Assign a stable positive identity without changing any feature-specific tags.
execute unless score @s fg.actor matches 1.. run scoreboard players add #next_actor fg.actor 1
execute unless score @s fg.actor matches 1.. run scoreboard players operation @s fg.actor = #next_actor fg.actor
