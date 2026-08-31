# Scope modifier values are signed deltas. Existing attachments omit them and therefore add zero.
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.scope.ready_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.scope.ready_ticks 1
scoreboard players operation @s fg.scenter += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.scope.ready_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.scope.ready_ticks 1
scoreboard players operation @s fg.scenter += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.scope.ready_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.action.scope.ready_ticks 1
scoreboard players operation @s fg.scenter += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.scope.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.scope.spread_multiplier_x1000 1
scoreboard players operation @s fg.scspread += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.scope.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.scope.spread_multiplier_x1000 1
scoreboard players operation @s fg.scspread += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.scope.spread_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.scope.spread_multiplier_x1000 1
scoreboard players operation @s fg.scspread += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.scope.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.scope.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.scrpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.scope.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.scope.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.scrpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.scope.recoil_pitch_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.scope.recoil_pitch_multiplier_x1000 1
scoreboard players operation @s fg.scrpitch += @s fg.math

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.scope.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.scope.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.scryaw += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.scope.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.scope.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.scryaw += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.scope.recoil_yaw_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.scope.recoil_yaw_multiplier_x1000 1
scoreboard players operation @s fg.scryaw += @s fg.math
