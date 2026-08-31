# Runs once after all pellets have finished, so one shell produces one camera kick.
function firearms:recoil/sync_gun
function firearms:recoil/measure_manual
scoreboard players operation @s fg.delta = @s fg.now
scoreboard players operation @s fg.delta -= @s fg.rlastshot
execute if score @s fg.delta > @s fg.rreset run scoreboard players set @s fg.rburst 0

scoreboard players operation @s fg.rstep = @s fg.rburst
execute if score @s fg.rstep > @s fg.rmax run scoreboard players operation @s fg.rstep = @s fg.rmax
scoreboard players operation @s fg.rmult = @s fg.rstep
scoreboard players operation @s fg.rmult *= @s fg.rgrowth
scoreboard players add @s fg.rmult 1000
execute if score @s fg.rmult matches ..999 run scoreboard players set @s fg.rmult 1000
execute if score @s fg.rmult matches 3001.. run scoreboard players set @s fg.rmult 3000

execute store result score @s fg.rx run random value 0..10000
scoreboard players operation @s fg.rkick = @s fg.rpitchrnd
scoreboard players operation @s fg.rkick *= @s fg.rx
scoreboard players operation @s fg.rkick /= #unit fg.const
scoreboard players operation @s fg.rkick += @s fg.rpitch
scoreboard players operation @s fg.rkick *= @s fg.rmult
scoreboard players operation @s fg.rkick /= #thousand fg.const
execute if score @s fg.scopeready matches 1 run scoreboard players operation @s fg.rkick *= @s fg.scrpitch
execute if score @s fg.scopeready matches 1 run scoreboard players operation @s fg.rkick /= #thousand fg.const
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.rkick *= @s fg.aimrpitch
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.rkick /= #thousand fg.const
execute if score @s fg.rkick matches ..-1 run scoreboard players set @s fg.rkick 0
execute if score @s fg.rkick matches 15001.. run scoreboard players set @s fg.rkick 15000

execute store result score @s fg.ry run random value -10000..10000
scoreboard players operation @s fg.ryawkick = @s fg.ryawrnd
scoreboard players operation @s fg.ryawkick *= @s fg.ry
scoreboard players operation @s fg.ryawkick /= #unit fg.const
scoreboard players operation @s fg.ryawkick *= @s fg.rmult
scoreboard players operation @s fg.ryawkick /= #thousand fg.const
execute if score @s fg.scopeready matches 1 run scoreboard players operation @s fg.ryawkick *= @s fg.scryaw
execute if score @s fg.scopeready matches 1 run scoreboard players operation @s fg.ryawkick /= #thousand fg.const
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.ryawkick *= @s fg.aimryaw
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.ryawkick /= #thousand fg.const
execute if score @s fg.ryawkick matches ..-10001 run scoreboard players set @s fg.ryawkick -10000
execute if score @s fg.ryawkick matches 10001.. run scoreboard players set @s fg.ryawkick 10000

execute store result score @s fg.baseyaw run data get entity @s Rotation[0] 1000
execute store result score @s fg.basepitch run data get entity @s Rotation[1] 1000
scoreboard players operation @s fg.yaw = @s fg.baseyaw
scoreboard players operation @s fg.yaw += @s fg.ryawkick
scoreboard players operation @s fg.pitch = @s fg.basepitch
scoreboard players operation @s fg.pitch -= @s fg.rkick
execute if score @s fg.pitch matches ..-90001 run scoreboard players set @s fg.pitch -90000
execute if score @s fg.pitch matches 90001.. run scoreboard players set @s fg.pitch 90000

# Only debt for the angle that was actually applied; the -90 degree ceiling cannot create phantom debt.
scoreboard players operation @s fg.ractual = @s fg.basepitch
scoreboard players operation @s fg.ractual -= @s fg.pitch
execute if score @s fg.ractual matches 1.. run scoreboard players operation @s fg.rdebt += @s fg.ractual
execute if score @s fg.rdebt matches 180001.. run scoreboard players set @s fg.rdebt 180000
function firearms:recoil/rotate

scoreboard players operation @s fg.rlastpitch = @s fg.pitch
scoreboard players operation @s fg.rlastshot = @s fg.now
scoreboard players operation @s fg.rlastserial = @s fg.serial
scoreboard players operation @s fg.rburst = @s fg.rstep
scoreboard players add @s fg.rburst 1
