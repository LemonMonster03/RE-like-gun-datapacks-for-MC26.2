scoreboard players set @s fge.inrange 0
function firearms_enemies:target/resolve
execute store result storage firearms_enemies:runtime macro.min_range int 1 run scoreboard players get @s fge.minrange
function firearms_enemies:sniper/check_close with storage firearms_enemies:runtime macro
tag @e remove fge.current_target
execute if score @s fge.inrange matches 1 run function firearms_enemies:target/leave_fire_range

execute if score @s fge.state matches 8 run scoreboard players operation @s fge.yaw = @s fge.lockyaw
execute if score @s fge.state matches 8 run scoreboard players operation @s fge.pitch = @s fge.lockpitch
execute if score @s fge.state matches 8 run function firearms_enemies:rotation/apply
execute if score @s fge.state matches 8 run scoreboard players operation @s fge.lockleft = @s fge.lockend
execute if score @s fge.state matches 8 run scoreboard players operation @s fge.lockleft -= #now fge.now
execute if score @s fge.state matches 8 if score @s fge.lockleft matches ..0 run scoreboard players set @s fge.lockleft 0
execute if score @s fge.state matches 8 if score #laserphase fge.tmp matches 0 run function firearms_enemies:sniper/laser/locked_start
execute if score @s fge.state matches 8 if score @s fge.lockleft matches 5 at @s run playsound minecraft:block.note_block.hat hostile @a[distance=..64] ~ ~ ~ 0.8 2.0
execute if score @s fge.state matches 8 if score #now fge.now >= @s fge.lockend run function firearms_enemies:sniper/fire
