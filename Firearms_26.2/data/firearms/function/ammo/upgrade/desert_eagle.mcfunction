scoreboard players set @s fg.math 1
data modify storage firearms:runtime held.balance_version set value 2
data modify storage firearms:runtime held.base.spread_mdeg set value 3000
data modify storage firearms:runtime held.base.recoil set value {pitch_mdeg:4200,pitch_random_mdeg:600,yaw_random_mdeg:600,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:10,recovery_delay_ticks:3,recovery_mdeg_per_tick:550}
data modify storage firearms:runtime held.base.aim set value {enabled:1b,enter_ticks:6,spread_multiplier_x1000:300,recoil_pitch_multiplier_x1000:700,recoil_yaw_multiplier_x1000:550,move_speed_multiplier_x1000:650}
