data modify storage firearms:runtime held.mods.action set from entity @s SelectedItem.components."minecraft:custom_data".firearms_attachment.payload
item replace entity @s weapon.mainhand with minecraft:air
function firearms:workbench/state/apply
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 1.1
title @s actionbar {text:'已恢复自定义机件配件。',color:'green'}
