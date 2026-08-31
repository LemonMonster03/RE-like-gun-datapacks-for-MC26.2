scoreboard players set @s fg.math 0
execute unless data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run scoreboard players set @s fg.math 1
execute if data entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] item.components."minecraft:custom_data".firearms unless data entity @s SelectedItem run scoreboard players set @s fg.math 2
execute if score @s fg.math matches 1 run function firearms:workbench/gun/store
execute if score @s fg.math matches 2 run function firearms:workbench/gun/take
execute if score @s fg.math matches 0 run title @s actionbar {text:'空台需主手持枪存入；有枪时需空手取回。',color:'yellow'}
