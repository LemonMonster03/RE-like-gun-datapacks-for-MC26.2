execute if score @s fge.target matches 1.. run function firearms_enemies:target/release
scoreboard players set @s fge.state 4
scoreboard players operation @s fge.reloadend = #now fge.now
scoreboard players operation @s fge.reloadend += @s fge.reloadt
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
function firearms_enemies:movement/apply_reload
function #firearms_enemies:reload_start
execute if score @s fge.reloadt matches 0 run function firearms_enemies:combat/reload_complete
