execute anchored eyes run rotate @s facing entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] feet
execute store result score @s fge.lockyaw run data get entity @s Rotation[0] 1000
execute store result score @s fge.lockpitch run data get entity @s Rotation[1] 1000

# Capture the warning line length once. The locked phase no longer needs the target or marker to move.
scoreboard players set @s fge.lasersteps 1
scoreboard players operation @s fge.lasermax = @s fge.range
execute at @s anchored eyes facing entity @e[type=minecraft:marker,tag=fge.aim_current,limit=1] feet positioned ^ ^ ^1 run function firearms_enemies:sniper/laser/measure_step
scoreboard players operation @s fge.lockrange = @s fge.lasersteps
execute if score @s fge.lockrange matches ..0 run scoreboard players set @s fge.lockrange 1

scoreboard players set @s fge.state 8
scoreboard players operation @s fge.lockend = #now fge.now
scoreboard players operation @s fge.lockend += @s fge.lockt
scoreboard players operation @s fge.lockleft = @s fge.lockt
function #firearms_enemies:aim_ready
execute at @s run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..64] ~ ~ ~ 0.75 1.6
