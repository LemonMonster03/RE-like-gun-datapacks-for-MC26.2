# Infer the saved horizontal facing from the old slot row, then raise and rebuild the visual layout.
tag @e[tag=fg.wb_focus] remove fg.wb_focus
scoreboard players operation #migrate_wb fg.wbid = @s fg.wbid
execute as @e[tag=fg.workbench] if score @s fg.wbid = #migrate_wb fg.wbid run tag @s add fg.wb_focus
execute unless entity @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] run tag @e[tag=fg.wb_focus] remove fg.wb_focus
execute unless entity @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] run return 0
execute unless entity @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] run tag @e[tag=fg.wb_focus] remove fg.wb_focus
execute unless entity @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] run return 0

execute as @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] at @s facing entity @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] feet run rotate @e[type=minecraft:marker,tag=fg.wb_core,tag=fg.wb_focus,limit=1] ~90 0
execute as @e[type=minecraft:marker,tag=fg.wb_core,tag=fg.wb_focus,limit=1] at @s run tp @s ~ ~1.25 ~
execute as @e[type=minecraft:marker,tag=fg.wb_core,tag=fg.wb_focus,limit=1] at @s rotated as @s run function firearms:workbench/layout/apply
scoreboard players set @e[type=minecraft:marker,tag=fg.wb_core,tag=fg.wb_focus,limit=1] fg.wblayout 2
tag @e[tag=fg.wb_focus] remove fg.wb_focus
