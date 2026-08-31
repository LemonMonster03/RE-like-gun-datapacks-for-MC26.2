# Validate slot and item serial every tick. Any mismatch cancels immediately.
scoreboard players set @s fg.math 1
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run scoreboard players set @s fg.math 0
execute if score @s fg.math matches 1 store result score @s fg.slot run data get entity @s SelectedItemSlot 1
execute if score @s fg.math matches 1 unless score @s fg.slot = @s fg.rslot run scoreboard players set @s fg.math 0
execute if score @s fg.math matches 1 run function firearms:state/load_held
execute if score @s fg.math matches 1 store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute if score @s fg.math matches 1 unless score @s fg.serial = @s fg.rserial run scoreboard players set @s fg.math 0
execute if score @s fg.math matches 0 run function firearms:reload/cancel
execute if score @s fg.math matches 1 if score @s fg.rskip matches 0 run scoreboard players remove @s fg.reload 1
execute if score @s fg.math matches 1 if score @s fg.rskip matches 1.. run scoreboard players set @s fg.rskip 0
execute if score @s fg.math matches 1 if score @s fg.reload matches 0 if score @s fg.rphase matches 0 if data storage firearms:runtime {held:{gun:{reload_mode:'infinite_single'}}} run function firearms:reload/infinite/complete
execute if score @s fg.math matches 1 if score @s fg.reload matches 0 if score @s fg.rphase matches 0 unless data storage firearms:runtime {held:{gun:{reload_mode:'infinite_single'}}} run function firearms:reload/complete
execute if score @s fg.math matches 1 if score @s fg.reload matches 0 if score @s fg.rphase matches 1.. run function firearms:reload/single/advance
