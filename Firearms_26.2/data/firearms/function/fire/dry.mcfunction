scoreboard players operation @s fg.next = @s fg.now
scoreboard players operation @s fg.next += @s fg.delay
execute store result storage firearms:runtime held.state.next_fire_tick int 1 run scoreboard players get @s fg.next
function firearms:state/write_held
execute at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.7 1.5
