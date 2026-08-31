execute if score @s fg.helmetcrit matches 1 run function firearms:ray/hit_precise
execute unless score @s fg.helmetcrit matches 1 run function firearms:ray/hit_tenths
particle minecraft:crit ~ ~ ~ 0.08 0.08 0.08 0.05 4 force @a[distance=..64]
execute if score @s fg.crit matches 1 run particle minecraft:enchanted_hit ~ ~ ~ 0.12 0.12 0.12 0.1 8 force @a[distance=..64]
execute if score @s fg.crit matches 1 run playsound minecraft:entity.player.attack.crit player @a[distance=..64] ~ ~ ~ 0.8 1.1
tag @e remove fg.hit_target
tag @e remove fg.wp_hit
