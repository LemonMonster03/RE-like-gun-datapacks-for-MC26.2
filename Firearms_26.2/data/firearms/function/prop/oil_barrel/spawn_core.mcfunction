tag @e[tag=fg.prop_new] remove fg.prop_new
scoreboard players add #next_prop fg.propid 1

summon minecraft:marker ~ ~0.7 ~ {Tags:['fg.explosive_prop','fg.oil_barrel','fg.oil_barrel_core','fg.prop_new']}
summon minecraft:interaction ~ ~ ~ {Tags:['fg.explosive_prop','fg.oil_barrel_hitbox','fg.prop_new'],width:0.9f,height:1.4f,response:0b}
summon minecraft:block_display ~ ~ ~ {Tags:['fg.explosive_prop','fg.oil_barrel_visual','fg.prop_new'],block_state:{Name:'minecraft:red_concrete'},view_range:1.0f,shadow_radius:0.35f,shadow_strength:0.8f,transformation:{translation:[-0.4f,0f,-0.4f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,1.4f,0.8f],right_rotation:[0f,0f,0f,1f]}}

scoreboard players operation @e[tag=fg.prop_new,distance=..2] fg.propid = #next_prop fg.propid
scoreboard players set @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=fg.prop_new,limit=1,sort=nearest] fg.parmed 0
scoreboard players set @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=fg.prop_new,limit=1,sort=nearest] fg.actor 0
execute as @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=fg.prop_new,limit=1,sort=nearest] at @s run function #firearms:oil_barrel_spawn
tag @e[tag=fg.prop_new,distance=..2] remove fg.prop_new
