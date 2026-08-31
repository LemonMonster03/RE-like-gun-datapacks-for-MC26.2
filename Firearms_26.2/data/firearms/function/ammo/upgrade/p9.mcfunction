scoreboard players set @s fg.math 1
data modify storage firearms:runtime held.balance_version set value 2
data modify storage firearms:runtime held.base.spread_mdeg set value 1800
data modify storage firearms:runtime held.base.recoil set value {pitch_mdeg:1650,pitch_random_mdeg:350,yaw_random_mdeg:300,burst_growth_x1000:80,burst_max_steps:6,burst_reset_ticks:8,recovery_delay_ticks:2,recovery_mdeg_per_tick:350}
data modify storage firearms:runtime held.base.aim set value {enabled:1b,enter_ticks:4,spread_multiplier_x1000:300,recoil_pitch_multiplier_x1000:650,recoil_yaw_multiplier_x1000:500,move_speed_multiplier_x1000:650}
