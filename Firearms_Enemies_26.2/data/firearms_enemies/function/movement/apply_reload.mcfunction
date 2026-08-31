function firearms_enemies:movement/clear
scoreboard players operation @s fge.moveamt = #thousand fge.const
scoreboard players operation @s fge.moveamt -= @s fge.movreload
execute store result storage firearms_enemies:runtime macro.move_amount int 1 run scoreboard players get @s fge.moveamt
execute if score @s fge.moveamt matches 1..9 run function firearms_enemies:movement/add_reload_1 with storage firearms_enemies:runtime macro
execute if score @s fge.moveamt matches 10..99 run function firearms_enemies:movement/add_reload_2 with storage firearms_enemies:runtime macro
execute if score @s fge.moveamt matches 100..999 run function firearms_enemies:movement/add_reload_3 with storage firearms_enemies:runtime macro
execute if score @s fge.moveamt matches 1000 run attribute @s minecraft:movement_speed modifier add firearms_enemies:reload_slow -1.0 add_multiplied_total
scoreboard players set @s fge.movestate 2
