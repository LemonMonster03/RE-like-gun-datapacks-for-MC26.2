data modify storage firearms:runtime held.mods.barrel set value {id:'precision',damage_x10:10,fire_delay_ticks:1,reload_ticks:0,magazine:0,range_blocks:0,spread_mdeg:-300,pellets:0,crit_chance_bps:500,crit_multiplier_x1000:0,recoil:{pitch_mdeg:0,pitch_random_mdeg:0,yaw_random_mdeg:0,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:0,recovery_delay_ticks:0,recovery_mdeg_per_tick:0},aim:{enter_ticks:0,spread_multiplier_x1000:0,recoil_pitch_multiplier_x1000:0,recoil_yaw_multiplier_x1000:0,move_speed_multiplier_x1000:0}}
item replace entity @s weapon.mainhand with minecraft:air
function firearms:workbench/state/apply
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 0.7 1.25
title @s actionbar {text:'已安装精准枪管。',color:'green'}
