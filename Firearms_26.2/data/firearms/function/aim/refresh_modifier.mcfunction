execute if score @s fg.aimmod matches 1 run attribute @s minecraft:movement_speed modifier remove firearms:aim_slow
scoreboard players set @s fg.aimmod 0
scoreboard players set @s fg.aimdelta 1000
scoreboard players operation @s fg.aimdelta -= @s fg.aimmove
execute store result storage firearms:runtime macro.aim_delta int 1 run scoreboard players get @s fg.aimdelta
execute if score @s fg.aimdelta matches 1..9 run function firearms:aim/add_modifier_1 with storage firearms:runtime macro
execute if score @s fg.aimdelta matches 10..99 run function firearms:aim/add_modifier_2 with storage firearms:runtime macro
execute if score @s fg.aimdelta matches 100..999 run function firearms:aim/add_modifier_3 with storage firearms:runtime macro
execute if score @s fg.aimdelta matches 1..999 run scoreboard players set @s fg.aimmod 1
scoreboard players operation @s fg.aimapplied = @s fg.aimmove
