particle minecraft:dust{color:[1.0f,0.05f,0.02f],scale:0.60f} ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
execute if block ~ ~ ~ #firearms_enemies:vision_passable if score @s fge.lasersteps < @s fge.lasermax run function firearms_enemies:sniper/laser/locked_next
