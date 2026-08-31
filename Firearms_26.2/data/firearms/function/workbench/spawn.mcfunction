# Spawn a persistent public station two blocks in front of the executor.
scoreboard players add #next_wb fg.wbid 1
execute positioned ^ ^-1.25 ^2.0 run summon minecraft:marker ~ ~ ~ {Tags:['fg.workbench','fg.wb_core','fg.wb_new']}
execute positioned ^ ^-1.25 ^2.0 run summon minecraft:block_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_base_display','fg.wb_new'],block_state:{Name:'minecraft:smithing_table'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.5f,0f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
execute positioned ^ ^0.10 ^2.0 run summon minecraft:item_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_carrier','fg.wb_new'],item_display:'ground',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_new,limit=1,sort=nearest] fg.wbslot 0

execute positioned ^-0.78 ^0.75 ^2.0 run summon minecraft:block_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.22f,-0.22f,-0.22f],left_rotation:[0f,0f,0f,1f],scale:[0.44f,0.44f,0.44f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.0 ^0.75 ^2.0 run summon minecraft:block_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.22f,-0.22f,-0.22f],left_rotation:[0f,0f,0f,1f],scale:[0.44f,0.44f,0.44f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.78 ^0.75 ^2.0 run summon minecraft:block_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_status','fg.wb_pending','fg.wb_new'],block_state:{Name:'minecraft:gray_stained_glass'},view_range:1.0f,shadow_radius:0f,transformation:{translation:[-0.22f,-0.22f,-0.22f],left_rotation:[0f,0f,0f,1f],scale:[0.44f,0.44f,0.44f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:block_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

execute positioned ^-0.78 ^0.78 ^2.0 run summon minecraft:item_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.0 ^0.78 ^2.0 run summon minecraft:item_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.78 ^0.78 ^2.0 run summon minecraft:item_display ~ ~ ~ {Tags:['fg.workbench','fg.wb_attachment_display','fg.wb_pending','fg.wb_new'],billboard:'center',item_display:'gui',view_range:1.0f,shadow_radius:0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:item_display,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

execute positioned ^ ^0.0 ^2.0 run summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.9f,height:0.7f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 0
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^-0.78 ^0.48 ^2.0 run summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.55f,height:0.62f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 1
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.0 ^0.48 ^2.0 run summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.55f,height:0.62f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 2
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^0.78 ^0.48 ^2.0 run summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:0.55f,height:0.62f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 3
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending
execute positioned ^ ^-1.25 ^2.0 run summon minecraft:interaction ~ ~ ~ {Tags:['fg.workbench','fg.wb_interaction','fg.wb_pending','fg.wb_new'],width:1.25f,height:0.75f,response:1b}
scoreboard players set @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] fg.wbslot 4
tag @e[type=minecraft:interaction,tag=fg.wb_pending,limit=1,sort=nearest] remove fg.wb_pending

scoreboard players operation @e[tag=fg.wb_new,distance=..4] fg.wbid = #next_wb fg.wbid
tag @e[tag=fg.wb_new,distance=..4] remove fg.wb_new
tellraw @s {text:'改造台已部署。右键枪位存取枪械，右键三个上方槽位装卸配件。',color:'green'}
