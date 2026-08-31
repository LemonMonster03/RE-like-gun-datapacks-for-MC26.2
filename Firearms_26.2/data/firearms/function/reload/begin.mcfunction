scoreboard players operation @s fg.reload = @s fg.rticks
scoreboard players set @s fg.rburst 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 0
function firearms:scope/cancel
scoreboard players operation @s fg.rtotal = @s fg.rticks
execute store result score @s fg.rslot run data get entity @s SelectedItemSlot 1
execute store result score @s fg.rserial run data get storage firearms:runtime held.serial 1
execute at @s run playsound minecraft:block.iron_trapdoor.close player @s ~ ~ ~ 0.55 1.7
