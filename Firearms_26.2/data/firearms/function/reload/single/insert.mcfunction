function firearms:state/load_held
function firearms:stats/calculate
function firearms:ammo/count
scoreboard players set @s fg.transfer 0
data modify storage firearms:runtime macro.amount set value 1
execute if score @s fg.loaded < @s fg.mag if score @s fg.reserve matches 1.. run function firearms:ammo/consume with storage firearms:runtime macro
scoreboard players operation @s fg.loaded += @s fg.transfer
execute if score @s fg.transfer matches 1.. store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
execute if score @s fg.transfer matches 1.. run data modify storage firearms:runtime held.ammo.reserve set value 0
execute if score @s fg.transfer matches 1.. run function firearms:state/write_held
execute if score @s fg.transfer matches 1.. run scoreboard players add @s fg.rinserted 1
execute if score @s fg.transfer matches 1.. at @s run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 0.55 1.65
execute if score @s fg.transfer matches 1.. run function #firearms:reload_round
function firearms:ammo/count
scoreboard players set @s fg.math 0
execute if score @s fg.transfer matches 1.. if score @s fg.loaded < @s fg.mag if score @s fg.reserve matches 1.. run scoreboard players set @s fg.math 1
execute if score @s fg.math matches 1 run function firearms:reload/single/wait_round
execute if score @s fg.math matches 0 run function firearms:reload/single/begin_close
