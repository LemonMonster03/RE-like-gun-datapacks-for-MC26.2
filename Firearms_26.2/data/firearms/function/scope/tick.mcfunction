# Unknown and press-fired guns cannot inherit a pending release shot.
execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute if score @s fg.scopen matches 1 unless data storage firearms:runtime {held:{gun:{input_mode:'release'}}} run function firearms:scope/cancel
execute if data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.scopen matches 1 unless score @s fg.serial = @s fg.scopeserial run function firearms:scope/cancel
execute if data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.scopen matches 1 if score @s fg.reload matches 1.. run function firearms:scope/cancel

scoreboard players set @s fg.scopeready 0
execute if score @s fg.scopen matches 1 if score @s fg.scenabled matches 1 if score @s fg.scopeticks >= @s fg.scenter run scoreboard players set @s fg.scopeready 1
scoreboard players operation @s fg.scopedelta = @s fg.now
scoreboard players operation @s fg.scopedelta -= @s fg.scopelast
execute if data storage firearms:runtime {held:{gun:{input_mode:'release'}}} if score @s fg.scopen matches 1 if score @s fg.scopedelta matches 2.. run function firearms:scope/release_fire
