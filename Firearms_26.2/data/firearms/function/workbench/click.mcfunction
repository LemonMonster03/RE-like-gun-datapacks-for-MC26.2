tag @e[tag=fg.wb_focus] remove fg.wb_focus
execute as @e[tag=fg.workbench] if score @s fg.wbid = @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbid run tag @s add fg.wb_focus
execute unless entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] run title @s actionbar {text:'改造台组件不完整。',color:'red'}
execute if entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] if score @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbslot matches 0 run function firearms:workbench/gun/click
execute if entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] if score @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbslot matches 1 run function firearms:workbench/slot/barrel
execute if entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] if score @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbslot matches 2 run function firearms:workbench/slot/magazine
execute if entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] if score @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbslot matches 3 run function firearms:workbench/slot/action
execute if entity @e[tag=fg.wb_core,tag=fg.wb_focus,limit=1] if score @e[type=minecraft:interaction,tag=fg.wb_clicked,limit=1] fg.wbslot matches 4 run function firearms:workbench/base/click
tag @e[tag=fg.wb_focus] remove fg.wb_focus
