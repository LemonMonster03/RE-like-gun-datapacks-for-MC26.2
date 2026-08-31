execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/prime_cancel
function #firearms_enemies:target_lost
scoreboard players set @s fge.state 5
scoreboard players operation @s fge.memoryend = #now fge.now
scoreboard players operation @s fge.memoryend += @s fge.memory
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
function firearms_enemies:movement/clear
execute if score @s fge.memory matches 0 run function firearms_enemies:target/release_silent
