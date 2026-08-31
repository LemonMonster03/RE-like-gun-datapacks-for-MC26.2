# Load base values.
execute store result score @s fg.damage run data get storage firearms:runtime held.base.damage_x10 1
execute store result score @s fg.delay run data get storage firearms:runtime held.base.fire_delay_ticks 1
execute store result score @s fg.rticks run data get storage firearms:runtime held.base.reload_ticks 1
scoreboard players set @s fg.ropen 0
scoreboard players set @s fg.rclose 0
execute if data storage firearms:runtime held.base.reload_open_ticks store result score @s fg.ropen run data get storage firearms:runtime held.base.reload_open_ticks 1
execute if data storage firearms:runtime held.base.reload_close_ticks store result score @s fg.rclose run data get storage firearms:runtime held.base.reload_close_ticks 1
execute store result score @s fg.mag run data get storage firearms:runtime held.base.magazine 1
execute store result score @s fg.range run data get storage firearms:runtime held.base.range_blocks 1
execute store result score @s fg.spread run data get storage firearms:runtime held.base.spread_mdeg 1
execute store result score @s fg.pellets run data get storage firearms:runtime held.base.pellets 1
# Older guns use ID-specific shipped defaults before explicit fields override them.
scoreboard players set @s fg.critchance 2000
scoreboard players set @s fg.critmult 1750
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.critchance 3000
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.critmult 2000
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.critchance 1000
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.critmult 1500
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.critchance 500
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.critmult 1500
execute if data storage firearms:runtime held.base.crit_chance_bps store result score @s fg.critchance run data get storage firearms:runtime held.base.crit_chance_bps 1
execute if data storage firearms:runtime held.base.crit_multiplier_x1000 store result score @s fg.critmult run data get storage firearms:runtime held.base.crit_multiplier_x1000 1

# Unknown legacy extensions default to no recoil. Shipped IDs retain their current defaults.
scoreboard players set @s fg.rpitch 0
scoreboard players set @s fg.rpitchrnd 0
scoreboard players set @s fg.ryawrnd 0
scoreboard players set @s fg.rgrowth 0
scoreboard players set @s fg.rmax 0
scoreboard players set @s fg.rreset 1
scoreboard players set @s fg.rdelay 0
scoreboard players set @s fg.rrecover 0
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rpitch 1650
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rpitchrnd 350
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.ryawrnd 300
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rgrowth 80
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rmax 6
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rreset 8
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rdelay 2
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.rrecover 350
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.rpitch 4200
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.rpitchrnd 600
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.ryawrnd 600
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.rreset 10
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.rdelay 3
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.rrecover 550
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rpitch 850
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rpitchrnd 250
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.ryawrnd 450
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rgrowth 100
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rmax 10
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rreset 8
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rdelay 4
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.rrecover 220
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.rpitch 5000
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.rpitchrnd 1000
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.ryawrnd 700
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.rreset 20
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.rdelay 3
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.rrecover 450
execute if data storage firearms:runtime held.base.recoil.pitch_mdeg store result score @s fg.rpitch run data get storage firearms:runtime held.base.recoil.pitch_mdeg 1
execute if data storage firearms:runtime held.base.recoil.pitch_random_mdeg store result score @s fg.rpitchrnd run data get storage firearms:runtime held.base.recoil.pitch_random_mdeg 1
execute if data storage firearms:runtime held.base.recoil.yaw_random_mdeg store result score @s fg.ryawrnd run data get storage firearms:runtime held.base.recoil.yaw_random_mdeg 1
execute if data storage firearms:runtime held.base.recoil.burst_growth_x1000 store result score @s fg.rgrowth run data get storage firearms:runtime held.base.recoil.burst_growth_x1000 1
execute if data storage firearms:runtime held.base.recoil.burst_max_steps store result score @s fg.rmax run data get storage firearms:runtime held.base.recoil.burst_max_steps 1
execute if data storage firearms:runtime held.base.recoil.burst_reset_ticks store result score @s fg.rreset run data get storage firearms:runtime held.base.recoil.burst_reset_ticks 1
execute if data storage firearms:runtime held.base.recoil.recovery_delay_ticks store result score @s fg.rdelay run data get storage firearms:runtime held.base.recoil.recovery_delay_ticks 1
execute if data storage firearms:runtime held.base.recoil.recovery_mdeg_per_tick store result score @s fg.rrecover run data get storage firearms:runtime held.base.recoil.recovery_mdeg_per_tick 1

# Unknown extensions without aim data remain hip-fire only. Shipped legacy IDs get current defaults.
scoreboard players set @s fg.aimenabled 0
scoreboard players set @s fg.aimenter 0
scoreboard players set @s fg.aimspread 1000
scoreboard players set @s fg.aimrpitch 1000
scoreboard players set @s fg.aimryaw 1000
scoreboard players set @s fg.aimmove 1000
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.aimenabled 1
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.aimenter 4
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.aimenabled 1
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.aimenter 6
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.aimenabled 1
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.aimenter 5
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.aimenabled 1
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.aimenter 6
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.aimspread 300
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.aimrpitch 650
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.aimryaw 500
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.aimspread 300
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.aimrpitch 700
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.aimryaw 550
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.aimspread 300
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.aimrpitch 650
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.aimryaw 500
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.aimspread 450
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.aimrpitch 750
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.aimryaw 600
execute if score @s fg.aimenabled matches 1 run scoreboard players set @s fg.aimmove 650
execute if data storage firearms:runtime held.base.aim.enabled store result score @s fg.aimenabled run data get storage firearms:runtime held.base.aim.enabled 1
execute if data storage firearms:runtime held.base.aim.enter_ticks store result score @s fg.aimenter run data get storage firearms:runtime held.base.aim.enter_ticks 1
execute if data storage firearms:runtime held.base.aim.spread_multiplier_x1000 store result score @s fg.aimspread run data get storage firearms:runtime held.base.aim.spread_multiplier_x1000 1
execute if data storage firearms:runtime held.base.aim.recoil_pitch_multiplier_x1000 store result score @s fg.aimrpitch run data get storage firearms:runtime held.base.aim.recoil_pitch_multiplier_x1000 1
execute if data storage firearms:runtime held.base.aim.recoil_yaw_multiplier_x1000 store result score @s fg.aimryaw run data get storage firearms:runtime held.base.aim.recoil_yaw_multiplier_x1000 1
execute if data storage firearms:runtime held.base.aim.move_speed_multiplier_x1000 store result score @s fg.aimmove run data get storage firearms:runtime held.base.aim.move_speed_multiplier_x1000 1

# Native-scope properties are optional. Press-fired guns and older extensions default to no scope stage.
scoreboard players set @s fg.scenabled 0
scoreboard players set @s fg.scenter 0
scoreboard players set @s fg.scspread 1000
scoreboard players set @s fg.scrpitch 1000
scoreboard players set @s fg.scryaw 1000
execute if data storage firearms:runtime held.base.scope.enabled store result score @s fg.scenabled run data get storage firearms:runtime held.base.scope.enabled 1
execute if data storage firearms:runtime held.base.scope.ready_ticks store result score @s fg.scenter run data get storage firearms:runtime held.base.scope.ready_ticks 1
execute if data storage firearms:runtime held.base.scope.spread_multiplier_x1000 store result score @s fg.scspread run data get storage firearms:runtime held.base.scope.spread_multiplier_x1000 1
execute if data storage firearms:runtime held.base.scope.recoil_pitch_multiplier_x1000 store result score @s fg.scrpitch run data get storage firearms:runtime held.base.scope.recoil_pitch_multiplier_x1000 1
execute if data storage firearms:runtime held.base.scope.recoil_yaw_multiplier_x1000 store result score @s fg.scryaw run data get storage firearms:runtime held.base.scope.recoil_yaw_multiplier_x1000 1

# Missing tracer_mode is deliberately subtle, so already-issued spacing-4 guns become unobtrusive.
scoreboard players set @s fg.tracemode 0
scoreboard players set @s fg.tracestart 8
scoreboard players set @s fg.tracegap 8
execute if data storage firearms:runtime {held:{visual:{tracer_mode:'debug'}}} run scoreboard players set @s fg.tracemode 1
execute if data storage firearms:runtime held.visual.tracer_start_steps store result score @s fg.tracestart run data get storage firearms:runtime held.visual.tracer_start_steps 1
execute if data storage firearms:runtime held.visual.tracer_spacing_steps store result score @s fg.tracegap run data get storage firearms:runtime held.visual.tracer_spacing_steps 1

# Add all modification slots. Every shipped gun initializes every delta to zero.
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.damage_x10 1
scoreboard players operation @s fg.damage += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.damage_x10 1
scoreboard players operation @s fg.damage += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.damage_x10 1
scoreboard players operation @s fg.damage += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.fire_delay_ticks 1
scoreboard players operation @s fg.delay += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.fire_delay_ticks 1
scoreboard players operation @s fg.delay += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.fire_delay_ticks 1
scoreboard players operation @s fg.delay += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.reload_ticks 1
scoreboard players operation @s fg.rticks += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.reload_ticks 1
scoreboard players operation @s fg.rticks += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.reload_ticks 1
scoreboard players operation @s fg.rticks += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.magazine 1
scoreboard players operation @s fg.mag += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.magazine 1
scoreboard players operation @s fg.mag += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.magazine 1
scoreboard players operation @s fg.mag += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.range_blocks 1
scoreboard players operation @s fg.range += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.range_blocks 1
scoreboard players operation @s fg.range += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.range_blocks 1
scoreboard players operation @s fg.range += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.spread_mdeg 1
scoreboard players operation @s fg.spread += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.spread_mdeg 1
scoreboard players operation @s fg.spread += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.spread_mdeg 1
scoreboard players operation @s fg.spread += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.pellets 1
scoreboard players operation @s fg.pellets += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.pellets 1
scoreboard players operation @s fg.pellets += @s fg.math
execute store result score @s fg.math run data get storage firearms:runtime held.mods.action.pellets 1
scoreboard players operation @s fg.pellets += @s fg.math

# Crit deltas are optional so guns and modifications issued before this update remain valid.
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.crit_chance_bps store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.crit_chance_bps 1
scoreboard players operation @s fg.critchance += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.crit_chance_bps store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.crit_chance_bps 1
scoreboard players operation @s fg.critchance += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.crit_chance_bps store result score @s fg.math run data get storage firearms:runtime held.mods.action.crit_chance_bps 1
scoreboard players operation @s fg.critchance += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.crit_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.crit_multiplier_x1000 1
scoreboard players operation @s fg.critmult += @s fg.math

# Modification recoil compounds are optional for backward compatibility.
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.pitch_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.pitch_mdeg 1
scoreboard players operation @s fg.rpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.pitch_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.pitch_mdeg 1
scoreboard players operation @s fg.rpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.pitch_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.pitch_mdeg 1
scoreboard players operation @s fg.rpitch += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.pitch_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.pitch_random_mdeg 1
scoreboard players operation @s fg.rpitchrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.pitch_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.pitch_random_mdeg 1
scoreboard players operation @s fg.rpitchrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.pitch_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.pitch_random_mdeg 1
scoreboard players operation @s fg.rpitchrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.yaw_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.yaw_random_mdeg 1
scoreboard players operation @s fg.ryawrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.yaw_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.yaw_random_mdeg 1
scoreboard players operation @s fg.ryawrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.yaw_random_mdeg store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.yaw_random_mdeg 1
scoreboard players operation @s fg.ryawrnd += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.burst_growth_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.burst_growth_x1000 1
scoreboard players operation @s fg.rgrowth += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.burst_growth_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.burst_growth_x1000 1
scoreboard players operation @s fg.rgrowth += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.burst_growth_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.burst_growth_x1000 1
scoreboard players operation @s fg.rgrowth += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.burst_max_steps store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.burst_max_steps 1
scoreboard players operation @s fg.rmax += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.burst_max_steps store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.burst_max_steps 1
scoreboard players operation @s fg.rmax += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.burst_max_steps store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.burst_max_steps 1
scoreboard players operation @s fg.rmax += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.burst_reset_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.burst_reset_ticks 1
scoreboard players operation @s fg.rreset += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.burst_reset_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.burst_reset_ticks 1
scoreboard players operation @s fg.rreset += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.burst_reset_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.burst_reset_ticks 1
scoreboard players operation @s fg.rreset += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.recovery_delay_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.recovery_delay_ticks 1
scoreboard players operation @s fg.rdelay += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.recovery_delay_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.recovery_delay_ticks 1
scoreboard players operation @s fg.rdelay += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.recovery_delay_ticks store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.recovery_delay_ticks 1
scoreboard players operation @s fg.rdelay += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.barrel.recoil.recovery_mdeg_per_tick store result score @s fg.math run data get storage firearms:runtime held.mods.barrel.recoil.recovery_mdeg_per_tick 1
scoreboard players operation @s fg.rrecover += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.recoil.recovery_mdeg_per_tick store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.recoil.recovery_mdeg_per_tick 1
scoreboard players operation @s fg.rrecover += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.recoil.recovery_mdeg_per_tick store result score @s fg.math run data get storage firearms:runtime held.mods.action.recoil.recovery_mdeg_per_tick 1
scoreboard players operation @s fg.rrecover += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.magazine.crit_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.magazine.crit_multiplier_x1000 1
scoreboard players operation @s fg.critmult += @s fg.math
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime held.mods.action.crit_multiplier_x1000 store result score @s fg.math run data get storage firearms:runtime held.mods.action.crit_multiplier_x1000 1
scoreboard players operation @s fg.critmult += @s fg.math
function firearms:stats/aim_mods
function firearms:stats/scope_mods

# Defensive clamps keep extension mistakes bounded.
execute if score @s fg.damage matches ..0 run scoreboard players set @s fg.damage 1
execute if score @s fg.damage matches 1001.. run scoreboard players set @s fg.damage 1000
execute if score @s fg.delay matches ..0 run scoreboard players set @s fg.delay 1
execute if score @s fg.delay matches 1201.. run scoreboard players set @s fg.delay 1200
execute if score @s fg.rticks matches ..0 run scoreboard players set @s fg.rticks 1
execute if score @s fg.rticks matches 1201.. run scoreboard players set @s fg.rticks 1200
execute if score @s fg.ropen matches ..-1 run scoreboard players set @s fg.ropen 0
execute if score @s fg.ropen matches 1201.. run scoreboard players set @s fg.ropen 1200
execute if score @s fg.rclose matches ..-1 run scoreboard players set @s fg.rclose 0
execute if score @s fg.rclose matches 1201.. run scoreboard players set @s fg.rclose 1200
execute if score @s fg.mag matches ..0 run scoreboard players set @s fg.mag 1
execute if score @s fg.mag matches 201.. run scoreboard players set @s fg.mag 200
execute if score @s fg.range matches ..0 run scoreboard players set @s fg.range 1
execute if score @s fg.range matches 129.. run scoreboard players set @s fg.range 128
execute if score @s fg.spread matches ..-1 run scoreboard players set @s fg.spread 0
execute if score @s fg.spread matches 15001.. run scoreboard players set @s fg.spread 15000
execute if score @s fg.pellets matches ..0 run scoreboard players set @s fg.pellets 1
execute if score @s fg.pellets matches 33.. run scoreboard players set @s fg.pellets 32
execute if score @s fg.critchance matches ..-1 run scoreboard players set @s fg.critchance 0
execute if score @s fg.critchance matches 10001.. run scoreboard players set @s fg.critchance 10000
execute if score @s fg.critmult matches ..999 run scoreboard players set @s fg.critmult 1000
execute if score @s fg.critmult matches 10001.. run scoreboard players set @s fg.critmult 10000
execute if score @s fg.rpitch matches ..-1 run scoreboard players set @s fg.rpitch 0
execute if score @s fg.rpitch matches 10001.. run scoreboard players set @s fg.rpitch 10000
execute if score @s fg.rpitchrnd matches ..-1 run scoreboard players set @s fg.rpitchrnd 0
execute if score @s fg.rpitchrnd matches 5001.. run scoreboard players set @s fg.rpitchrnd 5000
execute if score @s fg.ryawrnd matches ..-1 run scoreboard players set @s fg.ryawrnd 0
execute if score @s fg.ryawrnd matches 5001.. run scoreboard players set @s fg.ryawrnd 5000
execute if score @s fg.rgrowth matches ..-1 run scoreboard players set @s fg.rgrowth 0
execute if score @s fg.rgrowth matches 501.. run scoreboard players set @s fg.rgrowth 500
execute if score @s fg.rmax matches ..-1 run scoreboard players set @s fg.rmax 0
execute if score @s fg.rmax matches 21.. run scoreboard players set @s fg.rmax 20
execute if score @s fg.rreset matches ..0 run scoreboard players set @s fg.rreset 1
execute if score @s fg.rreset matches 101.. run scoreboard players set @s fg.rreset 100
execute if score @s fg.rdelay matches ..-1 run scoreboard players set @s fg.rdelay 0
execute if score @s fg.rdelay matches 41.. run scoreboard players set @s fg.rdelay 40
execute if score @s fg.rrecover matches ..-1 run scoreboard players set @s fg.rrecover 0
execute if score @s fg.rrecover matches 5001.. run scoreboard players set @s fg.rrecover 5000
execute if score @s fg.aimenabled matches ..0 run scoreboard players set @s fg.aimenabled 0
execute if score @s fg.aimenabled matches 1.. run scoreboard players set @s fg.aimenabled 1
execute if score @s fg.aimenter matches ..-1 run scoreboard players set @s fg.aimenter 0
execute if score @s fg.aimenter matches 41.. run scoreboard players set @s fg.aimenter 40
execute if score @s fg.aimspread matches ..99 run scoreboard players set @s fg.aimspread 100
execute if score @s fg.aimspread matches 1001.. run scoreboard players set @s fg.aimspread 1000
execute if score @s fg.aimrpitch matches ..-1 run scoreboard players set @s fg.aimrpitch 0
execute if score @s fg.aimrpitch matches 1501.. run scoreboard players set @s fg.aimrpitch 1500
execute if score @s fg.aimryaw matches ..-1 run scoreboard players set @s fg.aimryaw 0
execute if score @s fg.aimryaw matches 1501.. run scoreboard players set @s fg.aimryaw 1500
execute if score @s fg.aimmove matches ..99 run scoreboard players set @s fg.aimmove 100
execute if score @s fg.aimmove matches 1001.. run scoreboard players set @s fg.aimmove 1000
execute if score @s fg.scenabled matches ..0 run scoreboard players set @s fg.scenabled 0
execute if score @s fg.scenabled matches 1.. run scoreboard players set @s fg.scenabled 1
execute if score @s fg.scenter matches ..-1 run scoreboard players set @s fg.scenter 0
execute if score @s fg.scenter matches 41.. run scoreboard players set @s fg.scenter 40
execute if score @s fg.scspread matches ..9 run scoreboard players set @s fg.scspread 10
execute if score @s fg.scspread matches 1001.. run scoreboard players set @s fg.scspread 1000
execute if score @s fg.scrpitch matches ..-1 run scoreboard players set @s fg.scrpitch 0
execute if score @s fg.scrpitch matches 1501.. run scoreboard players set @s fg.scrpitch 1500
execute if score @s fg.scryaw matches ..-1 run scoreboard players set @s fg.scryaw 0
execute if score @s fg.scryaw matches 1501.. run scoreboard players set @s fg.scryaw 1500
execute if score @s fg.tracemode matches 0 if score @s fg.tracestart matches ..7 run scoreboard players set @s fg.tracestart 8
execute if score @s fg.tracemode matches 0 if score @s fg.tracegap matches ..7 run scoreboard players set @s fg.tracegap 8
execute if score @s fg.tracemode matches 0 if score @s fg.tracegap matches 33.. run scoreboard players set @s fg.tracegap 32
execute if score @s fg.tracemode matches 1 if score @s fg.tracestart matches ..-1 run scoreboard players set @s fg.tracestart 0
execute if score @s fg.tracemode matches 1 if score @s fg.tracegap matches ..0 run scoreboard players set @s fg.tracegap 1
execute if score @s fg.tracemode matches 1 if score @s fg.tracegap matches 17.. run scoreboard players set @s fg.tracegap 16
execute if score @s fg.tracestart matches 65.. run scoreboard players set @s fg.tracestart 64

# A native scope settles first; Shift steadying is an additional multiplier.
execute if score @s fg.scopeready matches 1 if score @s fg.scenabled matches 1 run scoreboard players operation @s fg.spread *= @s fg.scspread
execute if score @s fg.scopeready matches 1 if score @s fg.scenabled matches 1 run scoreboard players operation @s fg.spread /= #thousand fg.const
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.spread *= @s fg.aimspread
execute if score @s fg.aiming matches 1 run scoreboard players operation @s fg.spread /= #thousand fg.const
execute if score @s fg.spread matches ..-1 run scoreboard players set @s fg.spread 0
execute if score @s fg.spread matches 15001.. run scoreboard players set @s fg.spread 15000

execute store result score @s fg.loaded run data get storage firearms:runtime held.ammo.loaded 1
execute store result score @s fg.reserve run data get storage firearms:runtime held.ammo.reserve 1
execute store result score @s fg.next run data get storage firearms:runtime held.state.next_fire_tick 1
