scoreboard players set @s fg.rburst 0
scoreboard players set @s fg.rphase 1
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 1
scoreboard players operation @s fg.reload = @s fg.ropen
scoreboard players operation @s fg.rtotal = @s fg.ropen
execute store result score @s fg.rslot run data get entity @s SelectedItemSlot 1
execute store result score @s fg.rserial run data get storage firearms:runtime held.serial 1
function firearms:scope/cancel
execute at @s run playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 0.55 1.35
execute if score @s fg.reload matches 0 run function firearms:reload/single/wait_round
