execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute unless score @s fg.serial = @s fg.aimserial run function firearms:aim/new_gun
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} run scoreboard players set @s fg.aimon 0
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.aimenabled matches 1 if score @s fg.reload matches 0 if predicate firearms:is_sneaking run scoreboard players set @s fg.aimon 1
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.aimon matches 1 run function firearms:aim/held
execute unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.aimon matches 0 run function firearms:aim/release
