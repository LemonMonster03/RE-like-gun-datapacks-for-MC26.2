execute store result score @s fg.rx run random value -10000..10000
execute store result score @s fg.ry run random value -10000..10000
scoreboard players operation @s fg.math = @s fg.rx
scoreboard players operation @s fg.math *= @s fg.rx
scoreboard players operation @s fg.limit = @s fg.ry
scoreboard players operation @s fg.limit *= @s fg.ry
scoreboard players operation @s fg.math += @s fg.limit
scoreboard players add @s fg.tries 1
execute if score @s fg.math <= #circle fg.const run tag @s add fg.sample_ok
execute unless entity @s[tag=fg.sample_ok] if score @s fg.tries matches ..7 run function firearms:shot/sample
execute unless entity @s[tag=fg.sample_ok] if score @s fg.tries matches 8.. run scoreboard players set @s fg.rx 0
execute unless entity @s[tag=fg.sample_ok] if score @s fg.tries matches 8.. run scoreboard players set @s fg.ry 0
