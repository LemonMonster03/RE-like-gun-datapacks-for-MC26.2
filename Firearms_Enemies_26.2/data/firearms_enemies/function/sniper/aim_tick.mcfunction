scoreboard players operation @s fge.aimleft = @s fge.aimuntil
scoreboard players operation @s fge.aimleft -= #now fge.now
execute if score @s fge.aimleft matches ..0 run scoreboard players set @s fge.aimleft 0
execute if score #laserphase fge.tmp matches 0 run function firearms_enemies:sniper/laser/tracking_start
execute if score #now fge.now >= @s fge.aimuntil run function firearms_enemies:sniper/lock
