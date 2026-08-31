# Invoke in a custom dimension context to clear its loaded oil barrels safely.
execute as @e[type=minecraft:marker,tag=fg.oil_barrel_core] at @s run function firearms:prop/oil_barrel/remove_core
