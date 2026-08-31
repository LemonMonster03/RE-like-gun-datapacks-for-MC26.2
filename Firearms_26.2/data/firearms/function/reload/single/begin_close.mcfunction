scoreboard players set @s fg.rphase 3
scoreboard players operation @s fg.reload = @s fg.rclose
scoreboard players operation @s fg.rtotal = @s fg.rclose
execute at @s run playsound minecraft:block.iron_trapdoor.close player @s ~ ~ ~ 0.55 1.25
execute if score @s fg.reload matches 0 run function firearms:reload/single/finish
