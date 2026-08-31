# @s is the deploying player; execution position is the station's ground-level center.
scoreboard players add #next_wb fg.wbid 1
summon minecraft:marker ~ ~ ~ {Tags:['fg.workbench','fg.wb_core','fg.wb_new','fg.wb_new_core']}
scoreboard players set @e[type=minecraft:marker,tag=fg.wb_new_core,limit=1,sort=nearest,distance=..0.1] fg.wblayout 2
data modify entity @e[type=minecraft:marker,tag=fg.wb_new_core,limit=1,sort=nearest,distance=..0.1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=minecraft:marker,tag=fg.wb_new_core,limit=1,sort=nearest,distance=..0.1] Rotation[1] set value 0f

summon minecraft:block_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_base_display','fg.wb_new'],block_state:{Name:'minecraft:smithing_table'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.5f,0f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
summon minecraft:item_display ^0.0 ^1.08 ^-0.58 {Tags:['fg.workbench','fg.wb_carrier','fg.wb_new'],item_display:'ground',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_new,limit=1,sort=nearest] fg.wbslot 0
data modify entity @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_new,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]

summon minecraft:block_display ^-0.82 ^1.82 ^-0.68 {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.19f,-0.19f,-0.19f],left_rotation:[0f,0f,0f,1f],scale:[0.38f,0.38f,0.38f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:block_display ^0.0 ^1.82 ^-0.68 {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.19f,-0.19f,-0.19f],left_rotation:[0f,0f,0f,1f],scale:[0.38f,0.38f,0.38f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:block_display ^0.82 ^1.82 ^-0.68 {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.19f,-0.19f,-0.19f],left_rotation:[0f,0f,0f,1f],scale:[0.38f,0.38f,0.38f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

summon minecraft:item_display ^-0.82 ^1.84 ^-0.72 {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:item_display ^0.0 ^1.84 ^-0.72 {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:item_display ^0.82 ^1.84 ^-0.72 {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

summon minecraft:interaction ^0.0 ^0.78 ^-0.62 {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:1.15f,height:0.72f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 0
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:interaction ^-0.82 ^1.40 ^-0.68 {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.78f,height:0.84f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:interaction ^0.0 ^1.40 ^-0.68 {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.78f,height:0.84f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:interaction ^0.82 ^1.40 ^-0.68 {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.78f,height:0.84f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:1.25f,height:1.0f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 4
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

scoreboard players operation @e[tag=fg.wb_new,distance=..4] fg.wbid = #next_wb fg.wbid
tag @e[tag=fg.wb_new,distance=..4] remove fg.wb_new
execute as @e[type=minecraft:marker,tag=fg.wb_new_core,limit=1,sort=nearest,distance=..0.1] at @s rotated as @s run function firearms:workbench/layout/spawn_labels
tag @e[type=minecraft:marker,tag=fg.wb_new_core,distance=..0.1] remove fg.wb_new_core
tellraw @s {text:'改造台已部署在前方。右键“枪械位”存取枪械，并按浮空标签操作配件槽。',color:'green'}
