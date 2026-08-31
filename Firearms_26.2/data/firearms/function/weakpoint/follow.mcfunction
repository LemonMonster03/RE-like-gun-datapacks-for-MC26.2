# This fixed offset is only for demo_attach. External rig locators should not use fg.follow_receiver.
tag @e remove fg.wp_following
tag @e remove fg.wp_receiver
tag @s add fg.wp_following
execute as @e[tag=fg.damage_receiver] if score @s fg.actor = @e[type=minecraft:marker,tag=fg.wp_following,limit=1] fg.actor run tag @s add fg.wp_receiver
execute as @e[tag=fg.wp_receiver,limit=1] at @s anchored eyes positioned ^ ^-0.55 ^ run tp @e[type=minecraft:marker,tag=fg.wp_following,limit=1] ~ ~ ~
execute unless entity @e[tag=fg.wp_receiver,limit=1] run kill @s
tag @e remove fg.wp_following
tag @e remove fg.wp_receiver
