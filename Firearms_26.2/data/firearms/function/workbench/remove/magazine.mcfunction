scoreboard players set @s fg.limit 9
execute if data storage firearms:runtime {held:{mods:{magazine:{id:'extended'}}}} run scoreboard players set @s fg.limit 1
execute if score @s fg.limit matches 1 run item replace entity @s weapon.mainhand with minecraft:hopper[minecraft:max_stack_size=1,minecraft:custom_name={text:'扩容弹匣',color:'aqua',bold:true,italic:false},minecraft:lore=[{text:'弹匣配件',color:'gray',italic:false},{text:'容量按枪型 +2 / +5 / +10',color:'dark_green',italic:false},{text:'换弹时间 +8 tick',color:'dark_red',italic:false}],minecraft:custom_data={firearms_attachment:{schema:1,id:'extended_magazine',slot:'magazine'}}] 1
execute if score @s fg.limit matches 9 run function firearms:workbench/remove/custom_magazine
data modify storage firearms:runtime held.mods.magazine set value {id:'stock',damage_x10:0,fire_delay_ticks:0,reload_ticks:0,magazine:0,range_blocks:0,spread_mdeg:0,pellets:0,crit_chance_bps:0,crit_multiplier_x1000:0,recoil:{pitch_mdeg:0,pitch_random_mdeg:0,yaw_random_mdeg:0,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:0,recovery_delay_ticks:0,recovery_mdeg_per_tick:0},aim:{enter_ticks:0,spread_multiplier_x1000:0,recoil_pitch_multiplier_x1000:0,recoil_yaw_multiplier_x1000:0,move_speed_multiplier_x1000:0}}
function firearms:workbench/state/apply
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 0.9
title @s actionbar {text:'弹匣配件已拆下；超量弹药已退回背包。',color:'yellow'}
