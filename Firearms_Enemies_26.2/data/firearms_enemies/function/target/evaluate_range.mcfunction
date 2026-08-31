scoreboard players set @s fge.inrange 0
execute store result storage firearms_enemies:runtime macro.min_range int 1 run scoreboard players get @s fge.minrange
execute store result storage firearms_enemies:runtime macro.max_range int 1 run scoreboard players get @s fge.range
function firearms_enemies:target/check_fire_range with storage firearms_enemies:runtime macro
