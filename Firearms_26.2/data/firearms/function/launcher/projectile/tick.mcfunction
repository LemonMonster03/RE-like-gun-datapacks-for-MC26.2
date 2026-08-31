tag @e[tag=fg.launch_origin] remove fg.launch_origin
tag @e[tag=fg.launch_candidate] remove fg.launch_candidate
tag @e[tag=fg.launch_target] remove fg.launch_target
tag @e[tag=fg.launch_direct_target] remove fg.launch_direct_target
tag @a remove fg.launch_owner
tag @s add fg.launch_origin
scoreboard players add @s fg.gage 1
scoreboard players set @s fg.ghit 0
scoreboard players set @s fg.gdirect 0

execute if score @s fg.gtype matches 1 run particle minecraft:dust{color:[0.95f,0.30f,0.08f],scale:0.45f} ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
execute if score @s fg.gtype matches 2 run particle minecraft:flame ~ ~ ~ 0.02 0.02 0.02 0.005 1 normal @a[distance=..96]
execute if score @s fg.gtype matches 3 run particle minecraft:dust{color:[0.20f,0.80f,0.18f],scale:0.45f} ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
execute if score @s fg.gtype matches 4 if score @s fg.gage matches 2.. run particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.002 1 normal @a[distance=..96]
execute if score @s fg.gtype matches 4 if score @s fg.gage matches 2.. run particle minecraft:small_flame ~ ~ ~ 0.01 0.01 0.01 0.001 1 normal @a[distance=..96]

execute store result storage firearms:runtime launch_prev.x double 0.01 run scoreboard players get @s fg.gpx
execute store result storage firearms:runtime launch_prev.y double 0.01 run scoreboard players get @s fg.gpy
execute store result storage firearms:runtime launch_prev.z double 0.01 run scoreboard players get @s fg.gpz
function firearms:launcher/projectile/scan_start with storage firearms:runtime launch_prev
execute if score @s fg.ghit matches 0 if data entity @s {OnGround:1b} run function firearms:launcher/projectile/impact
execute if score @s fg.ghit matches 0 if score @s fg.gtype matches 4 run scoreboard players add @s fg.gdist 1400
execute if score @s fg.ghit matches 0 if score @s fg.gtype matches 4 if score @s fg.gdist matches 96000.. run kill @s
execute if score @s fg.ghit matches 0 store result score @s fg.gpx run data get entity @s Pos[0] 100
execute if score @s fg.ghit matches 0 store result score @s fg.gpy run data get entity @s Pos[1] 100
execute if score @s fg.ghit matches 0 store result score @s fg.gpz run data get entity @s Pos[2] 100
execute if score @s fg.ghit matches 0 if score @s fg.gtype matches 4 store result entity @s Motion[0] double 0.02 run scoreboard players get @s fg.thvx
execute if score @s fg.ghit matches 0 if score @s fg.gtype matches 4 store result entity @s Motion[1] double 0.02 run scoreboard players get @s fg.thvy
execute if score @s fg.ghit matches 0 if score @s fg.gtype matches 4 store result entity @s Motion[2] double 0.02 run scoreboard players get @s fg.thvz
execute if score @s fg.ghit matches 0 if score @s fg.guntil <= #now fg.now run kill @s
