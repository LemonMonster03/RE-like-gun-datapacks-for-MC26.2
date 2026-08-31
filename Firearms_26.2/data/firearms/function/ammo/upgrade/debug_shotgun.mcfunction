scoreboard players set @s fg.math 1
data modify storage firearms:runtime held.balance_version set value 2
data modify storage firearms:runtime held.base.spread_mdeg set value 8000
data modify storage firearms:runtime held.base.recoil set value {pitch_mdeg:5000,pitch_random_mdeg:1000,yaw_random_mdeg:700,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:20,recovery_delay_ticks:3,recovery_mdeg_per_tick:450}
data modify storage firearms:runtime held.base.aim set value {enabled:1b,enter_ticks:6,spread_multiplier_x1000:450,recoil_pitch_multiplier_x1000:750,recoil_yaw_multiplier_x1000:600,move_speed_multiplier_x1000:650}
