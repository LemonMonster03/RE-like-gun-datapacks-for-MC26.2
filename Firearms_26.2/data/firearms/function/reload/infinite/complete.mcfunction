function firearms:state/load_held
function firearms:stats/calculate
scoreboard players set @s fg.transfer 0
execute if score @s fg.loaded < @s fg.mag run scoreboard players set @s fg.loaded 1
execute if score @s fg.loaded matches 1.. run scoreboard players set @s fg.transfer 1
execute if score @s fg.transfer matches 1.. store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
execute if score @s fg.transfer matches 1.. run data modify storage firearms:runtime held.ammo.reserve set value 0
execute if score @s fg.transfer matches 1.. run function firearms:state/write_held
scoreboard players set @s fg.reload 0
scoreboard players set @s fg.rtotal 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 0
execute if score @s fg.transfer matches 1.. at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 0.8 0.7
execute if score @s fg.transfer matches 1.. run function #firearms:reload_complete
