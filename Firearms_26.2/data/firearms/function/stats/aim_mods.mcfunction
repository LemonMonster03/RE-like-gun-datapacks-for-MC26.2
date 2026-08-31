# Aim modifiers are signed deltas; lower spread/recoil/movement multipliers are stronger tradeoffs.
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.aim.enter_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.aim.enter_ticks 1
scoreboard players operation @s fg.aimenter += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.aim.enter_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.aim.enter_ticks 1
scoreboard players operation @s fg.aimenter += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.aim.enter_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.action.aim.enter_ticks 1
scoreboard players operation @s fg.aimenter += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.aim.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.aim.spread_multiplier_x1000 1
scoreboard players operation @s fg.aimspread += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.aim.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.aim.spread_multiplier_x1000 1
scoreboard players operation @s fg.aimspread += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.aim.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.aim.spread_multiplier_x1000 1
scoreboard players operation @s fg.aimspread += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.aim.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.aim.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.aimrpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.aim.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.aim.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.aimrpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.aim.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.aim.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.aimrpitch += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.aim.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.aim.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.aimryaw += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.aim.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.aim.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.aimryaw += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.aim.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.aim.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.aimryaw += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.aim.move_speed_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.aim.move_speed_multiplier_x1000 1
scoreboard players operation @s fg.aimmove += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.aim.move_speed_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.aim.move_speed_multiplier_x1000 1
scoreboard players operation @s fg.aimmove += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.aim.move_speed_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.aim.move_speed_multiplier_x1000 1
scoreboard players operation @s fg.aimmove += @s fg.math
