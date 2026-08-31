scoreboard players set @s fg.steps 0
scoreboard players set @s fg.hit 0
scoreboard players set @s fg.trace 0
execute if score @s fg.tracemode matches 0 unless score @s fg.tracegap matches 8..32 run scoreboard players set @s fg.tracegap 8
execute if score @s fg.tracemode matches 1 unless score @s fg.tracegap matches 1..16 run scoreboard players set @s fg.tracegap 1
execute unless score @s fg.tracestart matches 0..64 run scoreboard players set @s fg.tracestart 8
scoreboard players operation @s fg.maxsteps = @s fg.range
scoreboard players operation @s fg.maxsteps *= #four fg.const
function firearms:ray/step
