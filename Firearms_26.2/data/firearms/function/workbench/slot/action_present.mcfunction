function firearms:workbench/state/load
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime {held:{slots:{action:0b}}} run scoreboard players set @s fg.math 9
execute if score @s fg.math matches 9 run title @s actionbar {text:'这把枪不能安装机件配件。',color:'red'}
execute if score @s fg.math matches 0 unless data storage firearms:runtime {held:{mods:{action:{id:'stock'}}}} unless data entity @s SelectedItem run scoreboard players set @s fg.math 1
execute if score @s fg.math matches 0 if data storage firearms:runtime {held:{mods:{action:{id:'stock'}}}} if items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{firearms_attachment:{schema:1,id:'light_trigger',slot:'action'}}] run scoreboard players set @s fg.math 2
execute if score @s fg.math matches 0 if data storage firearms:runtime {held:{mods:{action:{id:'stock'}}}} if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms_attachment:{schema:1,id:'custom',slot:'action'}}] if data entity @s SelectedItem.components."minecraft:custom_data".firearms_attachment.payload run scoreboard players set @s fg.math 3
execute if score @s fg.math matches 1 run function firearms:workbench/remove/action
execute if score @s fg.math matches 2 run function firearms:workbench/install/light_trigger
execute if score @s fg.math matches 3 run function firearms:workbench/install/custom_action
execute if score @s fg.math matches 0 run title @s actionbar {text:'空槽请主手持匹配配件；已安装槽请空手拆除。',color:'yellow'}
