scoreboard players operation @s fg.bolt = @s fg.next
scoreboard players operation @s fg.bolt -= @s fg.now
execute if score @s fg.bolt matches ..0 run scoreboard players set @s fg.bolt 0
execute unless score @s fg.reload matches 1.. if score @s fg.bolt matches 24 at @s run playsound minecraft:item.crossbow.loading_middle player @a[distance=..24] ~ ~ ~ 0.55 0.75
execute unless score @s fg.reload matches 1.. if score @s fg.bolt matches 18 at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..24] ~ ~ ~ 0.55 0.8
