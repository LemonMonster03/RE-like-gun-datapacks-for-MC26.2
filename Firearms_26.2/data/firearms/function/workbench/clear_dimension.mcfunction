# Invoke in a custom dimension context to clear its loaded stations safely.
execute as @e[type=minecraft:marker,tag=fg.wb_core] at @s run function firearms:workbench/admin/remove_core
