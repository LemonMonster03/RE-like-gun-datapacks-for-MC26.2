scoreboard players set @s fg.reload 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 0
function firearms:state/load_held
function firearms:stats/calculate
function firearms:ammo/count
execute if data storage firearms:runtime {held:{gun:{reload_mode:'magazine'}}} if score @s fg.loaded < @s fg.mag if score @s fg.reserve matches 1.. run function firearms:reload/begin
execute if data storage firearms:runtime {held:{gun:{reload_mode:'single_round'}}} if score @s fg.loaded < @s fg.mag if score @s fg.reserve matches 1.. run function firearms:reload/single/begin
execute if data storage firearms:runtime {held:{gun:{reload_mode:'infinite_single'}}} if score @s fg.loaded < @s fg.mag run function firearms:reload/infinite/begin
execute if score @s fg.reload matches 0 at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.6 1.1
