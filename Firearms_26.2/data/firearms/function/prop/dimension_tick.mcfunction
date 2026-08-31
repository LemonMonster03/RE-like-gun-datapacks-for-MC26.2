# Public custom dimensions may call this function once per tick in their own execute-in context.
execute as @e[type=minecraft:marker,tag=fg.oil_barrel_core,scores={fg.parmed=1}] at @s if score @s fg.puntil <= #now fg.now run function firearms:prop/oil_barrel/detonate
