scoreboard players set @s fg.pooltick 0
particle minecraft:flame ~3 ~0.15 ~ 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~-3 ~0.15 ~ 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~ ~0.15 ~3 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~ ~0.15 ~-3 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~2.1 ~0.15 ~2.1 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~-2.1 ~0.15 ~2.1 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~2.1 ~0.15 ~-2.1 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:flame ~-2.1 ~0.15 ~-2.1 0.12 0.04 0.12 0.01 2 normal @a[distance=..96]
particle minecraft:smoke ~ ~0.2 ~ 1.5 0.08 1.5 0.01 2 normal @a[distance=..96]
tag @e[tag=fg.aoe_origin] remove fg.aoe_origin
tag @e[tag=fg.aoe_candidate] remove fg.aoe_candidate
tag @s add fg.aoe_origin
execute as @e[distance=..3.5,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thtype 5
scoreboard players set @s fg.thmax 12
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process
