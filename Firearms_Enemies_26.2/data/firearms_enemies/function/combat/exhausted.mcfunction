execute if score @s fge.target matches 1.. run function firearms_enemies:target/release
function firearms_enemies:movement/clear
function firearms_enemies:marker/remove_aim
scoreboard players set @s fge.state 7
scoreboard players set @s fge.loaded 0
scoreboard players set @s fge.reserve 0
tag @s add fge.exhausted
function #firearms_enemies:exhausted
