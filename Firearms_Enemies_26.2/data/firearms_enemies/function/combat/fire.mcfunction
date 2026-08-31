function firearms_enemies:marker/select_aim
execute if entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] anchored eyes run rotate @s facing entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] feet

# The burst center climbs vertically and accumulates a small random horizontal drift.
execute store result score @s fge.rand run random value -10000..10000
scoreboard players operation @s fge.tmp = @s fge.ryaw
scoreboard players operation @s fge.tmp *= @s fge.rand
scoreboard players operation @s fge.tmp /= #unit fge.const
scoreboard players operation @s fge.yawoff += @s fge.tmp
execute if score @s fge.yawoff matches ..-5001 run scoreboard players set @s fge.yawoff -5000
execute if score @s fge.yawoff matches 5001.. run scoreboard players set @s fge.yawoff 5000
scoreboard players operation @s fge.pitchoff = @s fge.bindex
scoreboard players operation @s fge.pitchoff *= @s fge.rpitch
execute if score @s fge.pitchoff matches 15001.. run scoreboard players set @s fge.pitchoff 15000

execute store result score @s fge.yaw run data get entity @s Rotation[0] 1000
execute store result score @s fge.pitch run data get entity @s Rotation[1] 1000
scoreboard players operation @s fge.yaw += @s fge.yawoff
scoreboard players operation @s fge.pitch -= @s fge.pitchoff
execute if score @s fge.pitch matches ..-90001 run scoreboard players set @s fge.pitch -90000
execute if score @s fge.pitch matches 90001.. run scoreboard players set @s fge.pitch 90000
function firearms_enemies:rotation/apply

scoreboard players operation @s fge.shotspread = @s fge.bindex
scoreboard players operation @s fge.shotspread *= @s fge.bgrowth
scoreboard players operation @s fge.shotspread += @s fge.spread
execute if score @s fge.shotspread matches 15001.. run scoreboard players set @s fge.shotspread 15000

data modify storage firearms:api hitscan set value {schema:1,damage_x10:1,range_blocks:1,spread_mdeg:0,pellets:1,damage_type:'firearms:enemy_bullet',critical_enabled:0b,weakpoints_enabled:0b,visual:{tracer:1b,tracer_mode:'subtle',tracer_start_steps:8,tracer_spacing_steps:8}}
execute store result storage firearms:api hitscan.damage_x10 int 1 run scoreboard players get @s fge.damage
execute store result storage firearms:api hitscan.range_blocks int 1 run scoreboard players get @s fge.range
execute store result storage firearms:api hitscan.spread_mdeg int 1 run scoreboard players get @s fge.shotspread
execute store result storage firearms:api hitscan.pellets int 1 run scoreboard players get @s fge.pellets

function #firearms_enemies:pre_fire
scoreboard players remove @s fge.loaded 1
execute at @s anchored eyes positioned ^0.18 ^-0.12 ^0.55 run particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.002 1 normal @a[distance=..64]
execute at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..64] ~ ~ ~ 0.55 1.55
function firearms:api/hitscan/fire
function #firearms_enemies:post_fire
function #firearms_enemies:recoil
tag @e remove fge.aim_current

scoreboard players add @s fge.bindex 1
execute if score @s fge.loaded matches ..0 if score @s fge.reserve matches 1.. run function firearms_enemies:combat/start_reload
execute if score @s fge.loaded matches ..0 if score @s fge.reserve matches ..0 run function firearms_enemies:combat/exhausted
execute if score @s fge.state matches 2 if score @s fge.bindex >= @s fge.bshots run function firearms_enemies:combat/start_pause
execute if score @s fge.state matches 2 run scoreboard players operation @s fge.nextfire = #now fge.now
execute if score @s fge.state matches 2 run scoreboard players operation @s fge.nextfire += @s fge.delay
