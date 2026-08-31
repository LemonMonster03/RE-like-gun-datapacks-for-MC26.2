execute if data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms run item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] contents
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.8 0.7
kill @e[tag=fg.workbench,tag=fg.wb_focus]
title @s actionbar {text:'改造台已拆除；其中的枪已返还。',color:'yellow'}
