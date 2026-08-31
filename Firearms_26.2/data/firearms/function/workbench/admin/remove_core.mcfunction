tag @e[tag=fg.wb_focus] remove fg.wb_focus
tag @s add fg.wb_removing
execute as @e[tag=fg.workbench] if score @s fg.wbid = @e[type=minecraft:marker,tag=fg.wb_removing,limit=1] fg.wbid run tag @s add fg.wb_focus
execute if data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms run summon minecraft:item ~ ~1 ~ {Tags:['fg.wb_ejected'],PickupDelay:0s,Item:{id:'minecraft:stone',count:1}}
execute if entity @e[type=minecraft:item,tag=fg.wb_ejected,distance=..2,sort=nearest,limit=1] run data modify entity @e[type=minecraft:item,tag=fg.wb_ejected,distance=..2,sort=nearest,limit=1] Item set from entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item
tag @e[type=minecraft:item,tag=fg.wb_ejected,distance=..2] remove fg.wb_ejected
kill @e[tag=fg.workbench,tag=fg.wb_focus]
