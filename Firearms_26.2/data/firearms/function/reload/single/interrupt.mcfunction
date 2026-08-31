execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute if score @s fg.serial = @s fg.rserial at @s run playsound minecraft:block.iron_trapdoor.close player @s ~ ~ ~ 0.5 1.4
function firearms:reload/cancel
