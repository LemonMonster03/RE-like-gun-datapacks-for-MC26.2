scoreboard players operation @s fg.math = @s fg.precisedamage
scoreboard players operation @s fg.math /= #hundred fg.const
scoreboard players operation @s fg.limit = @s fg.precisedamage
scoreboard players operation @s fg.limit %= #hundred fg.const
execute store result storage firearms:runtime macro.damage_whole int 1 run scoreboard players get @s fg.math
execute store result storage firearms:runtime macro.damage_hundredths int 1 run scoreboard players get @s fg.limit
execute if score @s fg.limit matches 0..9 run function firearms:ray/damage_precise_padded with storage firearms:runtime macro
execute if score @s fg.limit matches 10..99 run function firearms:ray/damage_precise with storage firearms:runtime macro
