# Public custom dimensions may call this function once per tick in their own execute-in context.
execute as @e[type=minecraft:interaction,tag=fg.wb_interaction] if data entity @s interaction run function firearms:workbench/event/right
