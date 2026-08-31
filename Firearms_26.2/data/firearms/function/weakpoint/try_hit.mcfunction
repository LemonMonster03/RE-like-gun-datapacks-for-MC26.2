# Lock the nearest weakpoint sample, then resolve its public actor ID to one receiver.
tag @e remove fg.wp_hit
tag @e remove fg.hit_target
tag @e[type=minecraft:marker,tag=fg.weakpoint,distance=..0.4,limit=1,sort=nearest] add fg.wp_hit
scoreboard players add @e[type=minecraft:marker,tag=fg.wp_hit,limit=1] fg.wpbonus 0
scoreboard players add @e[type=minecraft:marker,tag=fg.wp_hit,limit=1] fg.wpmult 0
execute as @e[tag=fg.damage_receiver] if score @s fg.actor = @e[type=minecraft:marker,tag=fg.wp_hit,limit=1] fg.actor run tag @s add fg.hit_target

# An orphan marker is ignored, so stale model locators cannot consume bullets.
execute if entity @e[tag=fg.hit_target,limit=1] run scoreboard players operation @s fg.hitbonus = @e[type=minecraft:marker,tag=fg.wp_hit,limit=1] fg.wpbonus
execute if entity @e[tag=fg.hit_target,limit=1] run scoreboard players operation @s fg.hitmultadd = @e[type=minecraft:marker,tag=fg.wp_hit,limit=1] fg.wpmult
execute if entity @e[tag=fg.hit_target,limit=1] run function firearms:ray/hit_weakpoint
execute unless entity @e[tag=fg.hit_target,limit=1] run tag @e remove fg.wp_hit
