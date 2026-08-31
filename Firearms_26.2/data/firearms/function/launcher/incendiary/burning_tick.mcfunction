execute if score @s fg.igniteuntil <= #now fg.now run function firearms:launcher/incendiary/end
execute if entity @s[tag=fg.incendiary_burning] if block ~ ~ ~ minecraft:water run function firearms:launcher/incendiary/end
execute if entity @s[tag=fg.incendiary_burning] if block ~ ~1 ~ minecraft:water run function firearms:launcher/incendiary/end
execute if entity @s[tag=fg.incendiary_burning] run particle minecraft:small_flame ~ ~1 ~ 0.25 0.45 0.25 0.01 1 normal @a[distance=..64]
execute if entity @s[tag=fg.incendiary_burning] run function #firearms:incendiary_tick
execute if entity @s[type=minecraft:player,tag=fg.incendiary_burning] if score @s fg.ignitetick <= #now fg.now run function firearms:launcher/incendiary/player_burn
