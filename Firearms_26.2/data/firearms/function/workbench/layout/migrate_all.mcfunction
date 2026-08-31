# Upgrade persistent pre-layout-2 stations without touching their stored gun or attachment state.
execute as @e[type=minecraft:marker,tag=fg.wb_core] at @s unless score @s fg.wblayout matches 2.. run function firearms:workbench/layout/migrate_legacy
