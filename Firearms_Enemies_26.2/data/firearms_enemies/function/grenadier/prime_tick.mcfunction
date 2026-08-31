scoreboard players operation @s fge.throwleft = @s fge.aimuntil
scoreboard players operation @s fge.throwleft -= #now fge.now
execute if score @s fge.throwleft matches ..0 run scoreboard players set @s fge.throwleft 0

function #firearms_enemies:grenade_prime_tick
execute if score @s fge.throwleft matches 21..40 if score #throwphase fge.tmp matches 0 at @s anchored eyes positioned ^-0.34 ^-0.62 ^0.42 run particle minecraft:dust{color:[0.95f,0.38f,0.06f],scale:0.45f} ~ ~ ~ 0.04 0.04 0.04 0.01 2 normal @a[distance=..64]
execute if score @s fge.throwleft matches 21..40 if score #throwphase fge.tmp matches 0 at @s anchored eyes positioned ^-0.34 ^-0.62 ^0.42 run particle minecraft:smoke ~ ~ ~ 0.03 0.03 0.03 0.005 1 normal @a[distance=..64]
execute if score @s fge.throwleft matches 1..20 if score #laserphase fge.tmp matches 0 at @s anchored eyes positioned ^-0.34 ^-0.62 ^0.42 run particle minecraft:dust{color:[1.0f,0.18f,0.02f],scale:0.60f} ~ ~ ~ 0.05 0.05 0.05 0.015 3 normal @a[distance=..64]
execute if score @s fge.throwleft matches 1..20 if score #laserphase fge.tmp matches 0 at @s anchored eyes positioned ^-0.34 ^-0.62 ^0.42 run particle minecraft:smoke ~ ~ ~ 0.04 0.04 0.04 0.008 1 normal @a[distance=..64]
execute if score @s fge.throwleft matches 10 at @s run playsound minecraft:block.note_block.hat hostile @a[distance=..48] ~ ~ ~ 0.75 1.9

execute if score #now fge.now >= @s fge.aimuntil run function firearms_enemies:grenadier/throw_prepare
