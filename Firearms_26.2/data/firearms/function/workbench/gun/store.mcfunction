function firearms:reload/cancel
function firearms:aim/reset
function firearms:recoil/reset
function firearms:state/load_held
execute if data storage firearms:runtime {held:{serial:0}} run function firearms:state/assign_serial
function firearms:ammo/prepare
item replace entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air
function firearms:workbench/rebuild
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 1.2
title @s actionbar {text:'枪械已放上改造台。',color:'green'}
