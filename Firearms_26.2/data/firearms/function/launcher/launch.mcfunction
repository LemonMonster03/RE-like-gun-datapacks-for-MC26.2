# Create a spread-adjusted launch vector from two temporary points one block apart.
function firearms:state/assign_actor
kill @e[type=minecraft:marker,tag=fg.aim_tmp]
kill @e[type=minecraft:marker,tag=fg.launch_pos]
kill @e[type=minecraft:marker,tag=fg.launch_dir]
tag @e[type=minecraft:item,tag=fg.launch_new] remove fg.launch_new
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fg.aim_tmp']}
execute store result score @s fg.baseyaw run data get entity @s Rotation[0] 1000
execute store result score @s fg.basepitch run data get entity @s Rotation[1] 1000
function firearms:shot/scatter
scoreboard players operation @s fg.yaw += @s fg.baseyaw
scoreboard players operation @s fg.pitch += @s fg.basepitch
execute if score @s fg.pitch matches ..-90001 run scoreboard players set @s fg.pitch -90000
execute if score @s fg.pitch matches 90001.. run scoreboard players set @s fg.pitch 90000
execute store result entity @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1] Rotation[0] float 0.001 run scoreboard players get @s fg.yaw
execute store result entity @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1] Rotation[1] float 0.001 run scoreboard players get @s fg.pitch
execute at @s rotated as @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1] anchored eyes positioned ^0.18 ^-0.12 ^0.60 run summon minecraft:marker ~ ~ ~ {Tags:['fg.launch_pos']}
execute at @s rotated as @e[type=minecraft:marker,tag=fg.aim_tmp,limit=1] anchored eyes positioned ^0.18 ^-0.12 ^1.60 run summon minecraft:marker ~ ~ ~ {Tags:['fg.launch_dir']}

execute store result score @s fg.thvx run data get entity @e[type=minecraft:marker,tag=fg.launch_dir,limit=1] Pos[0] 50
execute store result score @s fg.thvy run data get entity @e[type=minecraft:marker,tag=fg.launch_dir,limit=1] Pos[1] 50
execute store result score @s fg.thvz run data get entity @e[type=minecraft:marker,tag=fg.launch_dir,limit=1] Pos[2] 50
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.launch_pos,limit=1] Pos[0] 50
scoreboard players operation @s fg.thvx -= @s fg.math
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.launch_pos,limit=1] Pos[1] 50
scoreboard players operation @s fg.thvy -= @s fg.math
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.launch_pos,limit=1] Pos[2] 50
scoreboard players operation @s fg.thvz -= @s fg.math
scoreboard players set @s fg.thspeed 850
execute if score @s fg.gtype matches 4 run scoreboard players set @s fg.thspeed 1400
scoreboard players operation @s fg.thvx *= @s fg.thspeed
scoreboard players operation @s fg.thvy *= @s fg.thspeed
scoreboard players operation @s fg.thvz *= @s fg.thspeed
scoreboard players operation @s fg.thvx /= #thousand fg.const
scoreboard players operation @s fg.thvy /= #thousand fg.const
scoreboard players operation @s fg.thvz /= #thousand fg.const
execute unless score @s fg.gtype matches 4 run scoreboard players add @s fg.thvy 6

execute at @e[type=minecraft:marker,tag=fg.launch_pos,limit=1] run summon minecraft:item ~ ~ ~ {Tags:['fg.launcher_projectile','fg.launch_new'],PickupDelay:32767s,Age:-32768s,Invulnerable:1b,Item:{id:'minecraft:firework_star',count:1}}
data modify entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Item set from storage firearms:runtime launcher_item
data modify entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Owner set from entity @s UUID
scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gtype = @s fg.gtype
scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.actor = @s fg.actor
scoreboard players set @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gage 0
scoreboard players set @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gdist 0
scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.guntil = #now fg.now
scoreboard players add @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.guntil 100
execute if score @s fg.gtype matches 4 run scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.guntil = #now fg.now
execute if score @s fg.gtype matches 4 run scoreboard players add @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.guntil 80
execute store result score @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gpx run data get entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Pos[0] 100
execute store result score @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gpy run data get entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Pos[1] 100
execute store result score @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.gpz run data get entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Pos[2] 100
execute store result entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Motion[0] double 0.02 run scoreboard players get @s fg.thvx
execute store result entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Motion[1] double 0.02 run scoreboard players get @s fg.thvy
execute store result entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] Motion[2] double 0.02 run scoreboard players get @s fg.thvz
execute if score @s fg.gtype matches 4 run scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.thvx = @s fg.thvx
execute if score @s fg.gtype matches 4 run scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.thvy = @s fg.thvy
execute if score @s fg.gtype matches 4 run scoreboard players operation @e[type=minecraft:item,tag=fg.launch_new,limit=1] fg.thvz = @s fg.thvz
execute if score @s fg.gtype matches 4 run data merge entity @e[type=minecraft:item,tag=fg.launch_new,limit=1] {NoGravity:1b}
execute if score @s fg.gtype matches 4 run tag @e[type=minecraft:item,tag=fg.launch_new,limit=1] add fg.rocket_projectile
execute as @e[type=minecraft:item,tag=fg.launch_new,limit=1] at @s run function #firearms:launcher_projectile_spawn
execute if score @s fg.gtype matches 4 as @e[type=minecraft:item,tag=fg.launch_new,limit=1] at @s run function #firearms:rocket_projectile_spawn
tag @e[type=minecraft:item,tag=fg.launch_new,limit=1] remove fg.launch_new
kill @e[type=minecraft:marker,tag=fg.aim_tmp]
kill @e[type=minecraft:marker,tag=fg.launch_pos]
kill @e[type=minecraft:marker,tag=fg.launch_dir]
