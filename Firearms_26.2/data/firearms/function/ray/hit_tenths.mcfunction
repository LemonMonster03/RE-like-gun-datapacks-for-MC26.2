scoreboard players operation @s fg.math = @s fg.shotdamage
scoreboard players operation @s fg.math /= #ten fg.const
scoreboard players operation @s fg.limit = @s fg.shotdamage
scoreboard players operation @s fg.limit %= #ten fg.const
execute store result storage firearms:runtime macro.damage_whole int 1 run scoreboard players get @s fg.math
execute store result storage firearms:runtime macro.damage_tenth int 1 run scoreboard players get @s fg.limit
execute unless entity @s[tag=fg.api_shooter] run function firearms:ray/damage with storage firearms:runtime macro
execute if entity @s[tag=fg.api_shooter] run function firearms:ray/damage_api with storage firearms:runtime macro
