function firearms:reload/cancel
function firearms:state/load_held
data modify storage firearms:runtime held.mods.magazine set value {id:'extended',damage_x10:0,fire_delay_ticks:0,reload_ticks:8,magazine:5,range_blocks:0,spread_mdeg:0,pellets:0,crit_chance_bps:0,crit_multiplier_x1000:0,recoil:{pitch_mdeg:0,pitch_random_mdeg:0,yaw_random_mdeg:0,burst_growth_x1000:0,burst_max_steps:0,burst_reset_ticks:0,recovery_delay_ticks:0,recovery_mdeg_per_tick:0},aim:{enter_ticks:0,spread_multiplier_x1000:0,recoil_pitch_multiplier_x1000:0,recoil_yaw_multiplier_x1000:0,move_speed_multiplier_x1000:0}}
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 2
execute if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 10
execute if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 10
execute if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 2
execute if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 2
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 10
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run data modify storage firearms:runtime held.mods.magazine.magazine set value 2
function firearms:mod/apply
tellraw @s {text:'已安装扩容弹匣；容量按枪型增加，换弹时间 +8 tick。',color:'green'}
