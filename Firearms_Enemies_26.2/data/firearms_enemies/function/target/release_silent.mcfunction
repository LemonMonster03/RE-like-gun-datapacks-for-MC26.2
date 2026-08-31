execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/prime_cancel
function firearms_enemies:marker/remove_aim
execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/marker/remove
scoreboard players set @s fge.target 0
scoreboard players set @s fge.state 0
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
scoreboard players set @s fge.lockend 0
scoreboard players set @s fge.aimleft 0
scoreboard players set @s fge.lockleft 0
scoreboard players set @s fge.lockrange 0
scoreboard players set @s fge.throwok 0
scoreboard players set @s fge.throwdist 0
function firearms_enemies:movement/clear
