scoreboard players set @s fg.math 0
execute if entity @s[tag=fg.incendiary_burning] run scoreboard players set @s fg.math 1
tag @s add fg.incendiary_burning
scoreboard players operation @s fg.igniteuntil = #now fg.now
scoreboard players add @s fg.igniteuntil 100
scoreboard players operation @s fg.ignitetick = #now fg.now
scoreboard players add @s fg.ignitetick 20
scoreboard players operation @s fg.igniteowner = @e[tag=fg.aoe_origin,limit=1] fg.actor
execute unless entity @s[type=minecraft:player] run data merge entity @s {Fire:100s}
execute if score @s fg.math matches 0 run function #firearms:incendiary_start
execute if score @s fg.math matches 1 run function #firearms:incendiary_refresh
