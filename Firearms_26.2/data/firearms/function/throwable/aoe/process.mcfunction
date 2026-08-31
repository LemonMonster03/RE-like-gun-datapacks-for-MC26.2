tag @e[tag=fg.aoe_target] remove fg.aoe_target
kill @e[type=minecraft:marker,tag=fg.aoe_eye]
tag @e[tag=fg.aoe_candidate,sort=nearest,limit=1] add fg.aoe_target
tag @e[tag=fg.aoe_target,limit=1] remove fg.aoe_candidate

execute as @e[tag=fg.aoe_target,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:['fg.aoe_eye']}
scoreboard players set @s fg.thlos 0
scoreboard players set @s fg.thsteps 0
execute positioned ~ ~0.25 ~ facing entity @e[type=minecraft:marker,tag=fg.aoe_eye,limit=1] feet run function firearms:throwable/aoe/los_step

execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 1 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:throwable/hand_grenade/damage
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 2 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:throwable/flashbang/apply
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 3 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:launcher/he/damage
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 4 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:launcher/incendiary/damage
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 5 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:launcher/incendiary/apply
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 6 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:throwable/enemy_grenade/damage
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 7 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:prop/oil_barrel/damage
execute if score @s fg.thlos matches 1 if score @s fg.thtype matches 8 as @e[tag=fg.aoe_target,limit=1] at @s run function firearms:rocket/blast/damage

kill @e[type=minecraft:marker,tag=fg.aoe_eye]
tag @e[tag=fg.aoe_target] remove fg.aoe_target
scoreboard players add @s fg.thcount 1
execute if score @s fg.thcount matches ..63 if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process
