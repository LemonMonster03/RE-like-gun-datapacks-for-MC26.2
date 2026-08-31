# Defaults are the infected gunner profile; supplied numeric fields override them.
scoreboard players set @s fge.damage 25
scoreboard players set @s fge.delay 8
scoreboard players set @s fge.mag 12
scoreboard players set @s fge.maxres 36
scoreboard players set @s fge.reloadt 50
scoreboard players set @s fge.range 28
scoreboard players set @s fge.minrange 6
scoreboard players set @s fge.spread 4000
scoreboard players set @s fge.pellets 1
scoreboard players set @s fge.bshots 3
scoreboard players set @s fge.bpause 30
scoreboard players set @s fge.bgrowth 900
scoreboard players set @s fge.rpitch 700
scoreboard players set @s fge.ryaw 500
scoreboard players set @s fge.acquire 32
scoreboard players set @s fge.react 24
scoreboard players set @s fge.reacquire 10
scoreboard players set @s fge.track 6
scoreboard players set @s fge.lockt 20
scoreboard players set @s fge.memory 20
scoreboard players set @s fge.movfire 0
scoreboard players set @s fge.movreload 500
scoreboard players set @s fge.throwfuse 60
scoreboard players set @s fge.throwcool 160
scoreboard players set @s fge.throwspeed 1100
scoreboard players set @s fge.throwminy -6
scoreboard players set @s fge.throwmaxy 8

execute if data storage firearms_enemies:api register.damage_x10 store result score @s fge.damage run data get storage firearms_enemies:api register.damage_x10 1
execute if data storage firearms_enemies:api register.fire_delay_ticks store result score @s fge.delay run data get storage firearms_enemies:api register.fire_delay_ticks 1
execute if data storage firearms_enemies:api register.magazine store result score @s fge.mag run data get storage firearms_enemies:api register.magazine 1
execute if data storage firearms_enemies:api register.reserve store result score @s fge.maxres run data get storage firearms_enemies:api register.reserve 1
execute if data storage firearms_enemies:api register.reload_ticks store result score @s fge.reloadt run data get storage firearms_enemies:api register.reload_ticks 1
execute if data storage firearms_enemies:api register.range_blocks store result score @s fge.range run data get storage firearms_enemies:api register.range_blocks 1
execute if data storage firearms_enemies:api register.min_range_blocks store result score @s fge.minrange run data get storage firearms_enemies:api register.min_range_blocks 1
execute if data storage firearms_enemies:api register.spread_mdeg store result score @s fge.spread run data get storage firearms_enemies:api register.spread_mdeg 1
execute if data storage firearms_enemies:api register.pellets store result score @s fge.pellets run data get storage firearms_enemies:api register.pellets 1
execute if data storage firearms_enemies:api register.burst_shots store result score @s fge.bshots run data get storage firearms_enemies:api register.burst_shots 1
execute if data storage firearms_enemies:api register.burst_pause_ticks store result score @s fge.bpause run data get storage firearms_enemies:api register.burst_pause_ticks 1
execute if data storage firearms_enemies:api register.burst_spread_growth_mdeg store result score @s fge.bgrowth run data get storage firearms_enemies:api register.burst_spread_growth_mdeg 1
execute if data storage firearms_enemies:api register.recoil_pitch_mdeg store result score @s fge.rpitch run data get storage firearms_enemies:api register.recoil_pitch_mdeg 1
execute if data storage firearms_enemies:api register.recoil_yaw_random_mdeg store result score @s fge.ryaw run data get storage firearms_enemies:api register.recoil_yaw_random_mdeg 1
execute if data storage firearms_enemies:api register.acquire_range_blocks store result score @s fge.acquire run data get storage firearms_enemies:api register.acquire_range_blocks 1
execute if data storage firearms_enemies:api register.reaction_ticks store result score @s fge.react run data get storage firearms_enemies:api register.reaction_ticks 1
execute if data storage firearms_enemies:api register.reacquire_ticks store result score @s fge.reacquire run data get storage firearms_enemies:api register.reacquire_ticks 1
execute if data storage firearms_enemies:api register.tracking_interval_ticks store result score @s fge.track run data get storage firearms_enemies:api register.tracking_interval_ticks 1
execute if data storage firearms_enemies:api register.lock_ticks store result score @s fge.lockt run data get storage firearms_enemies:api register.lock_ticks 1
execute if data storage firearms_enemies:api register.target_memory_ticks store result score @s fge.memory run data get storage firearms_enemies:api register.target_memory_ticks 1
execute if data storage firearms_enemies:api register.firing_move_multiplier_x1000 store result score @s fge.movfire run data get storage firearms_enemies:api register.firing_move_multiplier_x1000 1
execute if data storage firearms_enemies:api register.reload_move_multiplier_x1000 store result score @s fge.movreload run data get storage firearms_enemies:api register.reload_move_multiplier_x1000 1
execute if data storage firearms_enemies:api register.throw_fuse_ticks store result score @s fge.throwfuse run data get storage firearms_enemies:api register.throw_fuse_ticks 1
execute if data storage firearms_enemies:api register.throw_cooldown_ticks store result score @s fge.throwcool run data get storage firearms_enemies:api register.throw_cooldown_ticks 1
execute if data storage firearms_enemies:api register.throw_speed_x1000 store result score @s fge.throwspeed run data get storage firearms_enemies:api register.throw_speed_x1000 1
execute if data storage firearms_enemies:api register.throw_min_vertical_blocks store result score @s fge.throwminy run data get storage firearms_enemies:api register.throw_min_vertical_blocks 1
execute if data storage firearms_enemies:api register.throw_max_vertical_blocks store result score @s fge.throwmaxy run data get storage firearms_enemies:api register.throw_max_vertical_blocks 1

execute if score @s fge.damage matches ..0 run scoreboard players set @s fge.damage 1
execute if score @s fge.damage matches 1001.. run scoreboard players set @s fge.damage 1000
execute if score @s fge.delay matches ..0 run scoreboard players set @s fge.delay 1
execute if score @s fge.delay matches 201.. run scoreboard players set @s fge.delay 200
execute if score @s fge.mag matches ..0 run scoreboard players set @s fge.mag 1
execute if score @s fge.mag matches 201.. run scoreboard players set @s fge.mag 200
execute if score @s fge.maxres matches ..-1 run scoreboard players set @s fge.maxres 0
execute if score @s fge.maxres matches 2001.. run scoreboard players set @s fge.maxres 2000
execute if score @s fge.reloadt matches ..-1 run scoreboard players set @s fge.reloadt 0
execute if score @s fge.reloadt matches 1201.. run scoreboard players set @s fge.reloadt 1200
execute if score @s fge.range matches ..0 run scoreboard players set @s fge.range 1
execute if score @s fge.range matches 65.. run scoreboard players set @s fge.range 64
execute if score @s fge.minrange matches ..-1 run scoreboard players set @s fge.minrange 0
execute if score @s fge.minrange > @s fge.range run scoreboard players operation @s fge.minrange = @s fge.range
execute if score @s fge.spread matches ..-1 run scoreboard players set @s fge.spread 0
execute if score @s fge.spread matches 15001.. run scoreboard players set @s fge.spread 15000
execute if score @s fge.pellets matches ..0 run scoreboard players set @s fge.pellets 1
execute if score @s fge.pellets matches 17.. run scoreboard players set @s fge.pellets 16
execute if score @s fge.bshots matches ..0 run scoreboard players set @s fge.bshots 1
execute if score @s fge.bshots matches 31.. run scoreboard players set @s fge.bshots 30
execute if score @s fge.bpause matches ..-1 run scoreboard players set @s fge.bpause 0
execute if score @s fge.bpause matches 601.. run scoreboard players set @s fge.bpause 600
execute if score @s fge.bgrowth matches ..-1 run scoreboard players set @s fge.bgrowth 0
execute if score @s fge.bgrowth matches 5001.. run scoreboard players set @s fge.bgrowth 5000
execute if score @s fge.rpitch matches ..-1 run scoreboard players set @s fge.rpitch 0
execute if score @s fge.rpitch matches 5001.. run scoreboard players set @s fge.rpitch 5000
execute if score @s fge.ryaw matches ..-1 run scoreboard players set @s fge.ryaw 0
execute if score @s fge.ryaw matches 5001.. run scoreboard players set @s fge.ryaw 5000
execute if score @s fge.acquire matches ..3 run scoreboard players set @s fge.acquire 4
execute if score @s fge.acquire matches 65.. run scoreboard players set @s fge.acquire 64
execute if score @s fge.react matches ..-1 run scoreboard players set @s fge.react 0
execute if score @s fge.react matches 201.. run scoreboard players set @s fge.react 200
execute if score @s fge.reacquire matches ..-1 run scoreboard players set @s fge.reacquire 0
execute if score @s fge.reacquire matches 201.. run scoreboard players set @s fge.reacquire 200
execute if score @s fge.track matches ..0 run scoreboard players set @s fge.track 1
execute if score @s fge.track matches 41.. run scoreboard players set @s fge.track 40
execute if score @s fge.lockt matches ..0 run scoreboard players set @s fge.lockt 1
execute if score @s fge.lockt matches 101.. run scoreboard players set @s fge.lockt 100
execute if score @s fge.memory matches ..-1 run scoreboard players set @s fge.memory 0
execute if score @s fge.memory matches 201.. run scoreboard players set @s fge.memory 200
execute if score @s fge.movfire matches ..-1 run scoreboard players set @s fge.movfire 0
execute if score @s fge.movfire matches 1001.. run scoreboard players set @s fge.movfire 1000
execute if score @s fge.movreload matches ..-1 run scoreboard players set @s fge.movreload 0
execute if score @s fge.movreload matches 1001.. run scoreboard players set @s fge.movreload 1000
execute if score @s fge.throwfuse matches ..19 run scoreboard players set @s fge.throwfuse 20
execute if score @s fge.throwfuse matches 201.. run scoreboard players set @s fge.throwfuse 200
execute if score @s fge.throwcool matches ..19 run scoreboard players set @s fge.throwcool 20
execute if score @s fge.throwcool matches 1201.. run scoreboard players set @s fge.throwcool 1200
execute if score @s fge.throwspeed matches ..299 run scoreboard players set @s fge.throwspeed 300
execute if score @s fge.throwspeed matches 1501.. run scoreboard players set @s fge.throwspeed 1500
execute if score @s fge.throwminy matches ..-32 run scoreboard players set @s fge.throwminy -32
execute if score @s fge.throwminy matches 33.. run scoreboard players set @s fge.throwminy 32
execute if score @s fge.throwmaxy matches ..-32 run scoreboard players set @s fge.throwmaxy -32
execute if score @s fge.throwmaxy matches 33.. run scoreboard players set @s fge.throwmaxy 32
execute if score @s fge.throwminy > @s fge.throwmaxy run scoreboard players operation @s fge.throwminy = @s fge.throwmaxy

function firearms:state/assign_actor
tag @s remove fge.telegraphed_sniper
tag @s remove fge.grenadier
execute if data storage firearms_enemies:api {register:{behavior:'telegraphed_sniper'}} run tag @s add fge.telegraphed_sniper
execute if data storage firearms_enemies:api {register:{behavior:'telegraphed_grenadier'}} run tag @s add fge.grenadier
execute if entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.bshots 1
scoreboard players operation @s fge.loaded = @s fge.mag
scoreboard players operation @s fge.reserve = @s fge.maxres
scoreboard players set @s fge.state 0
scoreboard players set @s fge.target 0
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
scoreboard players set @s fge.lockend 0
scoreboard players set @s fge.aimleft 0
scoreboard players set @s fge.lockleft 0
scoreboard players set @s fge.lockyaw 0
scoreboard players set @s fge.lockpitch 0
scoreboard players set @s fge.lockrange 0
scoreboard players set @s fge.wasstun 0
scoreboard players set @s fge.movestate 0
scoreboard players set @s fge.throwready 0
scoreboard players set @s fge.throwleft 0
scoreboard players set @s fge.throwok 0
scoreboard players set @s fge.throwdy 0
scoreboard players set @s fge.throwdist 0
scoreboard players operation @s fge.scanphase = @s fg.actor
scoreboard players operation @s fge.scanphase %= #five fge.const
tag @s add fge.shooter
tag @s remove fge.exhausted
execute unless entity @s[tag=fg.flash_vulnerable] run tag @s add fge.flash_added
tag @s add fg.flash_vulnerable
function firearms_enemies:movement/clear
execute if entity @s[tag=fge.grenadier] run item replace entity @s weapon.mainhand with air
