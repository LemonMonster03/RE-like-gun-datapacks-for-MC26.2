# A solid block wins over an entity at the same sample point.
execute unless block ~ ~ ~ #firearms:launcher_passable run scoreboard players set @s fg.ghit 1
scoreboard players set @s fg.phit 0
execute if score @s fg.gtype matches 4 if score @s fg.ghit matches 0 if entity @e[type=minecraft:interaction,tag=fg.oil_barrel_hitbox,dx=0,dy=0,dz=0,limit=1] run scoreboard players set @s fg.phit 1
execute if score @s fg.phit matches 1 run function firearms:prop/oil_barrel/hit
execute if score @s fg.phit matches 1 run scoreboard players set @s fg.ghit 1
execute if score @s fg.ghit matches 0 as @e[type=!#firearms:ignored,dx=0,dy=0,dz=0] if data entity @s Health run tag @s add fg.launch_target
execute if score @s fg.gage matches ..4 as @e[tag=fg.launch_target] if score @s fg.actor = @e[type=minecraft:item,tag=fg.launch_origin,limit=1] fg.actor run tag @s remove fg.launch_target
execute if entity @e[tag=fg.launch_target,limit=1,sort=nearest] run tag @e[tag=fg.launch_target,limit=1,sort=nearest] add fg.launch_direct_target
execute if entity @e[tag=fg.launch_direct_target,limit=1] run scoreboard players set @s fg.gdirect 1
execute if entity @e[tag=fg.launch_direct_target,limit=1] run scoreboard players set @s fg.ghit 1
execute if score @s fg.ghit matches 1 run tp @s ~ ~ ~
execute if score @s fg.ghit matches 1 at @s run function firearms:launcher/projectile/impact
execute if score @s fg.ghit matches 0 run scoreboard players add @s fg.gsteps 1
execute if score @s fg.ghit matches 0 if score @s fg.gsteps matches ..7 unless entity @s[distance=..0.22] positioned ^ ^ ^0.25 run function firearms:launcher/projectile/scan_step
