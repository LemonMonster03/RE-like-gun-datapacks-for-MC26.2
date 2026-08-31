scoreboard players set @s fg.reload 0
scoreboard players set @s fg.rtotal 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rskip 0
execute if score @s fg.rinserted matches 1.. run function #firearms:reload_complete
execute if score @s fg.rinserted matches ..0 at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.6 1.1
scoreboard players set @s fg.rinserted 0
