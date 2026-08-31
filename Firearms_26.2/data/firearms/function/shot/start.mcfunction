# One temporary marker carries exact floating-point yaw and pitch for all pellets.
kill @e[type=minecraft:marker,tag=fg.aim_tmp]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:['fg.aim_tmp']}
execute unless score @s fg.aimoverride matches 1 store result score @s fg.baseyaw run data get entity @s Rotation[0] 1000
execute unless score @s fg.aimoverride matches 1 store result score @s fg.basepitch run data get entity @s Rotation[1] 1000
execute if score @s fg.aimoverride matches 1 run scoreboard players operation @s fg.baseyaw = @s fg.scopeyaw
execute if score @s fg.aimoverride matches 1 run scoreboard players operation @s fg.basepitch = @s fg.scopepitch
scoreboard players set @s fg.pellet 0
function firearms:shot/pellet
kill @e[type=minecraft:marker,tag=fg.aim_tmp]
