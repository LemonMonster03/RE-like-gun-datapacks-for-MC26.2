execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/prime_cancel
scoreboard players set @s fge.state 6
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
function firearms_enemies:movement/clear
