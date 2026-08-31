# Recalculate effective capacity and return overflow to inventory ammo or legacy reserve.
function firearms:stats/calculate
scoreboard players operation @s fg.transfer = @s fg.loaded
scoreboard players operation @s fg.transfer -= @s fg.mag
execute if score @s fg.transfer matches 1.. if data storage firearms:runtime held.ammo.type store result storage firearms:runtime macro.amount int 1 run scoreboard players get @s fg.transfer
execute if score @s fg.transfer matches 1.. if data storage firearms:runtime held.ammo.type run function firearms:ammo/refund with storage firearms:runtime macro
execute if score @s fg.transfer matches 1.. unless data storage firearms:runtime held.ammo.type run scoreboard players operation @s fg.reserve += @s fg.transfer
execute if score @s fg.transfer matches 1.. run scoreboard players operation @s fg.loaded = @s fg.mag
execute store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
execute if data storage firearms:runtime held.ammo.type run data modify storage firearms:runtime held.ammo.reserve set value 0
execute unless data storage firearms:runtime held.ammo.type store result storage firearms:runtime held.ammo.reserve int 1 run scoreboard players get @s fg.reserve
function firearms:state/write_held
function firearms:lore/refresh_mainhand
