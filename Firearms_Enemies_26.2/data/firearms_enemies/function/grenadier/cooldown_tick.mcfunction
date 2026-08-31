scoreboard players operation @s fge.throwleft = @s fge.throwready
scoreboard players operation @s fge.throwleft -= #now fge.now
execute if score @s fge.throwleft matches ..0 run function firearms_enemies:grenadier/cooldown_complete
