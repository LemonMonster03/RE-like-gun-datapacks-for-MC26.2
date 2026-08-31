# @s is the focused station core at its corrected ground-level origin.
tp @e[type=minecraft:block_display,tag=fg.wb_base_display,tag=fg.wb_focus,limit=1] ^0.0 ^0.0 ^0.0
tp @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] ^0.0 ^1.08 ^-0.58
tp @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] ^-0.82 ^1.82 ^-0.68
tp @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=2},limit=1] ^0.0 ^1.82 ^-0.68
tp @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] ^0.82 ^1.82 ^-0.68
tp @e[type=minecraft:item_display,tag=fg.wb_attachment_display,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] ^-0.82 ^1.84 ^-0.72
tp @e[type=minecraft:item_display,tag=fg.wb_attachment_display,tag=fg.wb_focus,scores={fg.wbslot=2},limit=1] ^0.0 ^1.84 ^-0.72
tp @e[type=minecraft:item_display,tag=fg.wb_attachment_display,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] ^0.82 ^1.84 ^-0.72
tp @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=0},limit=1] ^0.0 ^0.78 ^-0.62
tp @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=1},limit=1] ^-0.82 ^1.40 ^-0.68
tp @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=2},limit=1] ^0.0 ^1.40 ^-0.68
tp @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=3},limit=1] ^0.82 ^1.40 ^-0.68
tp @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=4},limit=1] ^0.0 ^0.0 ^0.0

execute as @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus] run data modify entity @s transformation.translation set value [-0.19f,-0.19f,-0.19f]
execute as @e[type=minecraft:block_display,tag=fg.wb_status,tag=fg.wb_focus] run data modify entity @s transformation.scale set value [0.38f,0.38f,0.38f]
data modify entity @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=0},limit=1] width set value 1.15f
data modify entity @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=0},limit=1] height set value 0.72f
execute as @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=1..3}] run data modify entity @s width set value 0.78f
execute as @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=1..3}] run data modify entity @s height set value 0.84f
data modify entity @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=4},limit=1] width set value 1.25f
data modify entity @e[type=minecraft:interaction,tag=fg.wb_focus,scores={fg.wbslot=4},limit=1] height set value 1.0f

kill @e[type=minecraft:text_display,tag=fg.wb_label,tag=fg.wb_focus]
function firearms:workbench/layout/spawn_labels
