function firearms:reload/cancel
function firearms:state/load_held
data modify storage firearms:runtime held.mods.action set value {id:'stock',damage_x10:0,fire_delay_ticks:0,reload_ticks:0,magazine:0,range_blocks:0,spread_mdeg:0,pellets:0,crit_chance_bps:0,crit_multiplier_x1000:0,recoil:{pitch_mdeg:0,pitch_random_mdeg:0,yaw_random_mdeg:0,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:0,recovery_delay_ticks:0,recovery_mdeg_per_tick:0},aim:{enter_ticks:0,spread_multiplier_x1000:0,recoil_pitch_multiplier_x1000:0,recoil_yaw_multiplier_x1000:0,move_speed_multiplier_x1000:0}}
function firearms:mod/apply
tellraw @s {text:'已拆除机匣/扳机改造。',color:'yellow'}
