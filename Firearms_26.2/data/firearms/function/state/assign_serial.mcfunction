scoreboard players add #next fg.serial 1
scoreboard players operation @s fg.serial = #next fg.serial
execute store result storage firearms:runtime held.serial int 1 run scoreboard players get @s fg.serial
function firearms:state/write_held
