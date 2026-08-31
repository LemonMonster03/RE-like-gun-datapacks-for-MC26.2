scoreboard players set @s fge.wasstun 0
scoreboard players set @s fge.state 0
scoreboard players set @s fge.target 0
scoreboard players set @s fge.throwleft 0
execute if score @s fge.throwready > #now fge.now run scoreboard players set @s fge.state 9
item replace entity @s weapon.mainhand with air
function firearms_enemies:movement/clear
