execute unless data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms run function firearms:workbench/visual/empty
execute if data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms run function firearms:workbench/visual/loaded
