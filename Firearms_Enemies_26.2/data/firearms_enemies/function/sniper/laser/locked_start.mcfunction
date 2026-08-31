scoreboard players set @s fge.lasersteps 1
scoreboard players operation @s fge.lasermax = @s fge.lockrange
execute at @s anchored eyes rotated as @s positioned ^ ^ ^1 run function firearms_enemies:sniper/laser/locked_step
