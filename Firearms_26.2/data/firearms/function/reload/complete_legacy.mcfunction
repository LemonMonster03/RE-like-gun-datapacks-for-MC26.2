scoreboard players operation @s fg.need = @s fg.mag
scoreboard players operation @s fg.need -= @s fg.loaded
scoreboard players operation @s fg.transfer = @s fg.need
execute if score @s fg.transfer > @s fg.reserve run scoreboard players operation @s fg.transfer = @s fg.reserve
scoreboard players operation @s fg.loaded += @s fg.transfer
scoreboard players operation @s fg.reserve -= @s fg.transfer
execute store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
execute store result storage firearms:runtime held.ammo.reserve int 1 run scoreboard players get @s fg.reserve
function firearms:state/write_held
