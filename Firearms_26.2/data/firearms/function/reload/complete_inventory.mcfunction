function firearms:ammo/count
scoreboard players operation @s fg.need = @s fg.mag
scoreboard players operation @s fg.need -= @s fg.loaded
scoreboard players operation @s fg.transfer = @s fg.need
execute if score @s fg.transfer > @s fg.reserve run scoreboard players operation @s fg.transfer = @s fg.reserve
execute if score @s fg.transfer matches 1.. store result storage firearms:runtime macro.amount int 1 run scoreboard players get @s fg.transfer
execute if score @s fg.transfer matches 1.. run function firearms:ammo/consume with storage firearms:runtime macro
scoreboard players operation @s fg.loaded += @s fg.transfer
execute store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
data modify storage firearms:runtime held.ammo.reserve set value 0
function firearms:state/write_held
