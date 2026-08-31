# Run as a registered receiver. Removes only weakpoints with the same actor ID.
tag @e remove fg.wp_owner
tag @s add fg.wp_owner
execute as @e[type=minecraft:marker,tag=fg.weakpoint] if score @s fg.actor = @e[tag=fg.wp_owner,limit=1] fg.actor run kill @s
tag @e remove fg.wp_owner
