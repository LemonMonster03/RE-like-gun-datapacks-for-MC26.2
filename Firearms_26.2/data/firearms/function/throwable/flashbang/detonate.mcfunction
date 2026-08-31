particle minecraft:flash{color:[1.0f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0 0 0 0 1 normal @a[distance=..96]
particle minecraft:end_rod ~ ~0.2 ~ 0.5 0.5 0.5 0.12 24 normal @a[distance=..96]
playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..96] ~ ~ ~ 3 1.6

execute as @e[type=#firearms:flash_targets,tag=!fg.flash_immune,distance=..9,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
execute as @e[type=!minecraft:player,tag=fg.flash_vulnerable,tag=!fg.flash_immune,distance=..9,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thmax 24
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process

function #firearms:flashbang_detonate
