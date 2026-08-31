# Load bounded ray parameters. Defaults keep malformed optional fields safe.
scoreboard players set @s fg.damage 1
scoreboard players set @s fg.range 1
scoreboard players set @s fg.spread 0
scoreboard players set @s fg.pellets 1
execute if data storage firearms:api hitscan.damage_x10 store result score @s fg.damage run data get storage firearms:api hitscan.damage_x10 1
execute if data storage firearms:api hitscan.range_blocks store result score @s fg.range run data get storage firearms:api hitscan.range_blocks 1
execute if data storage firearms:api hitscan.spread_mdeg store result score @s fg.spread run data get storage firearms:api hitscan.spread_mdeg 1
execute if data storage firearms:api hitscan.pellets store result score @s fg.pellets run data get storage firearms:api hitscan.pellets 1
execute unless score @s fg.damage matches 1..10000 run scoreboard players set @s fg.damage 1
execute unless score @s fg.range matches 1..128 run scoreboard players set @s fg.range 1
execute unless score @s fg.spread matches 0..15000 run scoreboard players set @s fg.spread 0
execute unless score @s fg.pellets matches 1..32 run scoreboard players set @s fg.pellets 1

scoreboard players set @s fg.tracemode 0
scoreboard players set @s fg.tracestart 8
scoreboard players set @s fg.tracegap 8
execute if data storage firearms:api {hitscan:{visual:{tracer_mode:'debug'}}} run scoreboard players set @s fg.tracemode 1
execute if data storage firearms:api hitscan.visual.tracer_start_steps store result score @s fg.tracestart run data get storage firearms:api hitscan.visual.tracer_start_steps 1
execute if data storage firearms:api hitscan.visual.tracer_spacing_steps store result score @s fg.tracegap run data get storage firearms:api hitscan.visual.tracer_spacing_steps 1

# These tags scope API-only behavior to this synchronous shot.
tag @s remove fg.api_critical
tag @s remove fg.api_weakpoints
tag @s remove fg.api_no_tracer
tag @s remove fg.api_no_props
tag @s add fg.api_shooter
execute if data storage firearms:api {hitscan:{critical_enabled:1b}} run tag @s add fg.api_critical
execute if data storage firearms:api {hitscan:{weakpoints_enabled:1b}} run tag @s add fg.api_weakpoints
execute if data storage firearms:api {hitscan:{visual:{tracer:0b}}} run tag @s add fg.api_no_tracer
execute if data storage firearms:api {hitscan:{scene_props_enabled:0b}} run tag @s add fg.api_no_props

data modify storage firearms:runtime macro.damage_type set value 'firearms:bullet'
execute if data storage firearms:api hitscan.damage_type run data modify storage firearms:runtime macro.damage_type set from storage firearms:api hitscan.damage_type
tag @e remove fg.shooter
tag @s add fg.shooter
function firearms:shot/start
tag @s remove fg.shooter
tag @s remove fg.api_shooter
tag @s remove fg.api_critical
tag @s remove fg.api_weakpoints
tag @s remove fg.api_no_tracer
tag @s remove fg.api_no_props
data remove storage firearms:runtime macro.damage_type
