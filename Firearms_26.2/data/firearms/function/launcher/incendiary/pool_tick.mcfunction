execute if block ~ ~ ~ minecraft:water run kill @s
execute if block ~ ~ ~ minecraft:lava run kill @s
execute if block ~ ~ ~ minecraft:bubble_column run kill @s
execute if score @s fg.pooluntil <= #now fg.now run kill @s
execute if entity @s run scoreboard players add @s fg.pooltick 1
execute if entity @s if score @s fg.pooltick matches 5.. run function firearms:launcher/incendiary/pool_pulse
