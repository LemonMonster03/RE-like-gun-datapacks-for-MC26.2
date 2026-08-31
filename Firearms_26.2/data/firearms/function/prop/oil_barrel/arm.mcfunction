execute store result score #now fg.now run time query gametime
scoreboard players set @s fg.parmed 1
scoreboard players operation @s fg.puntil = #now fg.now
scoreboard players add @s fg.puntil 2
tag @s add fg.prop_armed
particle minecraft:smoke ~ ~ ~ 0.18 0.35 0.18 0.015 6 normal @a[distance=..64]
particle minecraft:flame ~ ~ ~ 0.12 0.25 0.12 0.015 4 normal @a[distance=..64]
playsound minecraft:item.firecharge.use block @a[distance=..64] ~ ~ ~ 0.7 1.35
function #firearms:oil_barrel_triggered
