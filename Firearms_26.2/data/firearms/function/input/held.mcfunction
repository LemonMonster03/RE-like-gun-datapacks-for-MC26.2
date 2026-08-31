function firearms:state/load_held
execute if data storage firearms:runtime {held:{serial:0}} run function firearms:state/assign_serial
function firearms:ammo/prepare
execute if score @s fg.reload matches 1.. if data storage firearms:runtime {held:{gun:{reload_mode:'single_round'}}} run function firearms:reload/single/interrupt
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} run function firearms:aim/check_fire
function firearms:stats/calculate
execute store result score @s fg.now run time query gametime
scoreboard players operation @s fg.delta = @s fg.now
scoreboard players operation @s fg.delta -= @s fg.lastuse
execute if data storage firearms:runtime {held:{gun:{input_mode:'release'}}} run function firearms:scope/using
execute if score @s fg.reload matches 1.. if data storage firearms:runtime {held:{gun:{reload_mode:'infinite_single'}}} if score @s fg.delta matches 2.. at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.7 1.2
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if data storage firearms:runtime {held:{gun:{fire_mode:"auto"}}} run function firearms:fire/try
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if data storage firearms:runtime {held:{gun:{fire_mode:"semi"}}} if score @s fg.delta matches 2.. run function firearms:fire/try
scoreboard players operation @s fg.lastuse = @s fg.now
