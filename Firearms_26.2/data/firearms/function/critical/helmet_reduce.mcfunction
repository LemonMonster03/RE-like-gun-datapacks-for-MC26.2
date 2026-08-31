# Exact hundredths: base*10 + (critical_total-base)*5.
scoreboard players operation @s fg.precisedamage = @s fg.damage
scoreboard players operation @s fg.precisedamage *= #ten fg.const
scoreboard players operation @s fg.math = @s fg.shotdamage
scoreboard players operation @s fg.math -= @s fg.damage
scoreboard players operation @s fg.math *= #five fg.const
scoreboard players operation @s fg.precisedamage += @s fg.math
scoreboard players set @s fg.helmetcrit 1
