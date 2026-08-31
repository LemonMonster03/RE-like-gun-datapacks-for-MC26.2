scoreboard players operation @s fge.transfer = @s fge.mag
execute if score @s fge.transfer > @s fge.reserve run scoreboard players operation @s fge.transfer = @s fge.reserve
scoreboard players operation @s fge.loaded = @s fge.transfer
scoreboard players operation @s fge.reserve -= @s fge.transfer
scoreboard players set @s fge.state 0
scoreboard players set @s fge.target 0
function firearms_enemies:movement/clear
function #firearms_enemies:reload_complete
execute if score @s fge.loaded matches ..0 run function firearms_enemies:combat/exhausted
