function firearms:state/load_held
function firearms:stats/calculate
scoreboard players set @s fg.transfer 0
execute if data storage firearms:runtime held.ammo.type run function firearms:reload/complete_inventory
execute unless data storage firearms:runtime held.ammo.type run function firearms:reload/complete_legacy
scoreboard players set @s fg.reload 0
scoreboard players set @s fg.rtotal 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 0
execute if score @s fg.transfer matches 1.. at @s run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.6 1.8
execute if score @s fg.transfer matches 1.. run function #firearms:reload_complete
execute if score @s fg.transfer matches ..0 at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.6 1.1
