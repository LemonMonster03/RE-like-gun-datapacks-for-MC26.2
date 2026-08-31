item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] contents
item replace entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] contents with minecraft:air
function firearms:workbench/rebuild
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 0.9
title @s actionbar {text:'枪械及其已装配状态已取回。',color:'green'}
