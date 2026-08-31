scoreboard players set @s fg.limit 9
execute if data storage firearms:runtime {held:{mods:{action:{id:'light_trigger'}}}} run scoreboard players set @s fg.limit 1
execute if score @s fg.limit matches 1 run item replace entity @s weapon.mainhand with minecraft:tripwire_hook[minecraft:max_stack_size=1,minecraft:custom_name={text:'轻量扳机',color:'aqua',bold:true,italic:false},minecraft:lore=[{text:'机件配件',color:'gray',italic:false},{text:'射击间隔 -1 tick',color:'dark_green',italic:false},{text:'散布 +0.20° · 自动武器不兼容',color:'dark_red',italic:false}],minecraft:custom_data={firearms_attachment:{schema:1,id:'light_trigger',slot:'action'}}] 1
execute if score @s fg.limit matches 9 run function firearms:workbench/remove/custom_action
data modify storage firearms:runtime held.mods.action set value {id:'stock',damage_x10:0,fire_delay_ticks:0,reload_ticks:0,magazine:0,range_blocks:0,spread_mdeg:0,pellets:0,crit_chance_bps:0,crit_multiplier_x1000:0,recoil:{pitch_mdeg:0,pitch_random_mdeg:0,yaw_random_mdeg:0,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:0,recovery_delay_ticks:0,recovery_mdeg_per_tick:0},aim:{enter_ticks:0,spread_multiplier_x1000:0,recoil_pitch_multiplier_x1000:0,recoil_yaw_multiplier_x1000:0,move_speed_multiplier_x1000:0}}
function firearms:workbench/state/apply
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 0.9
title @s actionbar {text:'机件配件已拆下。',color:'yellow'}
