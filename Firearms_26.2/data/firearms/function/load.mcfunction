# Firearms for Java 26.2 / data pack format 107.1.
# Player-bound scores and item-bound custom_data prevent multiplayer state leaks.
scoreboard objectives add fg.had dummy
scoreboard objectives add fg.serial dummy
scoreboard objectives add fg.now dummy
scoreboard objectives add fg.lastuse dummy
scoreboard objectives add fg.delta dummy
scoreboard objectives add fg.lasttick dummy
scoreboard objectives add fg.deaths deathCount
scoreboard objectives add fg.deathseen dummy
scoreboard objectives add fg.reload dummy
scoreboard objectives add fg.rslot dummy
scoreboard objectives add fg.rserial dummy
scoreboard objectives add fg.rtotal dummy
scoreboard objectives add fg.rphase dummy
scoreboard objectives add fg.rinserted dummy
scoreboard objectives add fg.rskip dummy
scoreboard objectives add fg.ropen dummy
scoreboard objectives add fg.rclose dummy
scoreboard objectives add fg.slot dummy
scoreboard objectives add fg.loaded dummy
scoreboard objectives add fg.reserve dummy
scoreboard objectives add fg.damage dummy
scoreboard objectives add fg.delay dummy
scoreboard objectives add fg.rticks dummy
scoreboard objectives add fg.mag dummy
scoreboard objectives add fg.range dummy
scoreboard objectives add fg.spread dummy
scoreboard objectives add fg.pellets dummy
scoreboard objectives add fg.next dummy
scoreboard objectives add fg.need dummy
scoreboard objectives add fg.transfer dummy
scoreboard objectives add fg.steps dummy
scoreboard objectives add fg.maxsteps dummy
scoreboard objectives add fg.hit dummy
scoreboard objectives add fg.trace dummy
scoreboard objectives add fg.tracegap dummy
scoreboard objectives add fg.tracestart dummy
scoreboard objectives add fg.tracemode dummy
scoreboard objectives add fg.rx dummy
scoreboard objectives add fg.ry dummy
scoreboard objectives add fg.math dummy
scoreboard objectives add fg.limit dummy
scoreboard objectives add fg.tries dummy
scoreboard objectives add fg.pellet dummy
scoreboard objectives add fg.baseyaw dummy
scoreboard objectives add fg.basepitch dummy
scoreboard objectives add fg.yaw dummy
scoreboard objectives add fg.pitch dummy
scoreboard objectives add fg.critchance dummy
scoreboard objectives add fg.critmult dummy
scoreboard objectives add fg.critroll dummy
scoreboard objectives add fg.crit dummy
scoreboard objectives add fg.eligible dummy
scoreboard objectives add fg.shotdamage dummy
scoreboard objectives add fg.precisedamage dummy
scoreboard objectives add fg.helmetcrit dummy
scoreboard objectives add fg.hitchance dummy
scoreboard objectives add fg.hitmult dummy
scoreboard objectives add fg.hitbonus dummy
scoreboard objectives add fg.hitmultadd dummy
scoreboard objectives add fg.actor dummy
scoreboard objectives add fg.wpbonus dummy
scoreboard objectives add fg.wpmult dummy
scoreboard objectives add fg.hity dummy
scoreboard objectives add fg.heady dummy
scoreboard objectives add fg.headdelta dummy
scoreboard objectives add fg.lastzone dummy
scoreboard objectives add fg.lastroll dummy
scoreboard objectives add fg.lastchance dummy
scoreboard objectives add fg.lastcrit dummy
scoreboard objectives add fg.rpitch dummy
scoreboard objectives add fg.rpitchrnd dummy
scoreboard objectives add fg.ryawrnd dummy
scoreboard objectives add fg.rgrowth dummy
scoreboard objectives add fg.rmax dummy
scoreboard objectives add fg.rreset dummy
scoreboard objectives add fg.rdelay dummy
scoreboard objectives add fg.rrecover dummy
scoreboard objectives add fg.rdebt dummy
scoreboard objectives add fg.rlastpitch dummy
scoreboard objectives add fg.rlastshot dummy
scoreboard objectives add fg.rlastserial dummy
scoreboard objectives add fg.rburst dummy
scoreboard objectives add fg.rstep dummy
scoreboard objectives add fg.rkick dummy
scoreboard objectives add fg.ryawkick dummy
scoreboard objectives add fg.rmult dummy
scoreboard objectives add fg.rcurrent dummy
scoreboard objectives add fg.rmanual dummy
scoreboard objectives add fg.ractual dummy
scoreboard objectives add fg.aimenabled dummy
scoreboard objectives add fg.aimenter dummy
scoreboard objectives add fg.aimspread dummy
scoreboard objectives add fg.aimrpitch dummy
scoreboard objectives add fg.aimryaw dummy
scoreboard objectives add fg.aimmove dummy
scoreboard objectives add fg.aimon dummy
scoreboard objectives add fg.aimticks dummy
scoreboard objectives add fg.aiming dummy
scoreboard objectives add fg.aimserial dummy
scoreboard objectives add fg.aimmod dummy
scoreboard objectives add fg.aimapplied dummy
scoreboard objectives add fg.aimdelta dummy
scoreboard objectives add fg.scopen dummy
scoreboard objectives add fg.scopeticks dummy
scoreboard objectives add fg.scopeserial dummy
scoreboard objectives add fg.scopelast dummy
scoreboard objectives add fg.scopedelta dummy
scoreboard objectives add fg.scopeyaw dummy
scoreboard objectives add fg.scopepitch dummy
scoreboard objectives add fg.scopeready dummy
scoreboard objectives add fg.scenabled dummy
scoreboard objectives add fg.scenter dummy
scoreboard objectives add fg.scspread dummy
scoreboard objectives add fg.scrpitch dummy
scoreboard objectives add fg.scryaw dummy
scoreboard objectives add fg.aimoverride dummy
scoreboard objectives add fg.bolt dummy
scoreboard objectives add fg.thtype dummy
scoreboard objectives add fg.thfuse dummy
scoreboard objectives add fg.thuntil dummy
scoreboard objectives add fg.thspeed dummy
scoreboard objectives add fg.thvx dummy
scoreboard objectives add fg.thvy dummy
scoreboard objectives add fg.thvz dummy
scoreboard objectives add fg.thsteps dummy
scoreboard objectives add fg.thmax dummy
scoreboard objectives add fg.thlos dummy
scoreboard objectives add fg.thcount dummy
scoreboard objectives add fg.stununtil dummy
scoreboard objectives add fg.stunowner dummy
scoreboard objectives add fg.health dummy
scoreboard objectives add fg.maxhealth dummy
scoreboard objectives add fg.wbid dummy
scoreboard objectives add fg.wbslot dummy
scoreboard objectives add fg.propid dummy
scoreboard objectives add fg.parmed dummy
scoreboard objectives add fg.puntil dummy
scoreboard objectives add fg.psteps dummy
scoreboard objectives add fg.phit dummy
scoreboard objectives add fg.pradius dummy
scoreboard objectives add fg.pmax dummy
scoreboard objectives add fg.plos dummy
scoreboard objectives add fg.pcount dummy
scoreboard objectives add fg.gtype dummy
scoreboard objectives add fg.gage dummy
scoreboard objectives add fg.guntil dummy
scoreboard objectives add fg.gpx dummy
scoreboard objectives add fg.gpy dummy
scoreboard objectives add fg.gpz dummy
scoreboard objectives add fg.gsteps dummy
scoreboard objectives add fg.ghit dummy
scoreboard objectives add fg.gdirect dummy
scoreboard objectives add fg.gdist dummy
scoreboard objectives add fg.pooluntil dummy
scoreboard objectives add fg.pooltick dummy
scoreboard objectives add fg.igniteuntil dummy
scoreboard objectives add fg.igniteowner dummy
scoreboard objectives add fg.ignitetick dummy
scoreboard objectives add fg.const dummy
scoreboard objectives add fg.menu trigger
scoreboard objectives add fg.menuuse dummy

scoreboard players add #next fg.serial 0
scoreboard players add #next_actor fg.actor 0
scoreboard players add #next_wb fg.wbid 0
scoreboard players add #next_prop fg.propid 0
scoreboard players set #four fg.const 4
scoreboard players set #five fg.const 5
scoreboard players set #ten fg.const 10
scoreboard players set #hundred fg.const 100
scoreboard players set #thousand fg.const 1000
scoreboard players set #unit fg.const 10000
scoreboard players set #circle fg.const 100000000

kill @e[type=minecraft:item_display,tag=fg.swap_tmp]
kill @e[type=minecraft:marker,tag=fg.aim_tmp]
kill @e[type=minecraft:marker,tag=fg.hit_point]
kill @e[type=minecraft:marker,tag=fg.head_anchor]
kill @e[type=minecraft:marker,tag=fg.recoil_tmp]
kill @e[type=minecraft:marker,tag=fg.throw_pos]
kill @e[type=minecraft:marker,tag=fg.throw_dir]
kill @e[type=minecraft:marker,tag=fg.aoe_eye]
kill @e[type=minecraft:marker,tag=fg.launch_pos]
kill @e[type=minecraft:marker,tag=fg.launch_dir]
kill @e[type=minecraft:marker,tag=fg.launch_scan]
kill @e[type=minecraft:marker,tag=fg.pool_probe]
kill @e[type=minecraft:item,tag=fg.prop_damage_source]
execute as @a run attribute @s minecraft:movement_speed modifier remove firearms:aim_slow
tag @a remove fg.shooter
tag @e remove fg.api_shooter
tag @e remove fg.api_critical
tag @e remove fg.api_weakpoints
tag @e remove fg.api_no_tracer
tag @e remove fg.api_no_props
tag @e remove fg.hit_target
tag @e remove fg.wp_hit
tag @e remove fg.wp_following
tag @e remove fg.wp_receiver
tag @e remove fg.wp_owner
tag @e remove fg.wp_new
tag @e remove fg.head_test
tag @e remove fg.throw_new
tag @e remove fg.aoe_origin
tag @e remove fg.aoe_candidate
tag @e remove fg.aoe_target
tag @e remove fg.launch_new
tag @e remove fg.launch_origin
tag @e remove fg.launch_candidate
tag @e remove fg.launch_target
tag @e remove fg.launch_direct_target
tag @a remove fg.launch_owner
tag @a remove fg.burn_target
tag @a remove fg.throw_owner
tag @e remove fg.throw_owner_entity
tag @a remove fg.gun
tag @a remove fg.sample_ok
tag @a remove fg.init
tag @e remove fg.wb_new
tag @e remove fg.wb_pending
tag @e remove fg.wb_clicked
tag @e remove fg.wb_focus
tag @e remove fg.prop_new
tag @e remove fg.prop_hit
tag @e remove fg.prop_focus
tag @e remove fg.prop_origin
tag @e remove fg.prop_owner
tag @e remove fg.prop_candidate
tag @e remove fg.prop_target
scoreboard players set @a fg.reload 0
scoreboard players set @a fg.rphase 0
scoreboard players set @a fg.rinserted 0
scoreboard players set @a fg.rskip 0
scoreboard players set @a fg.rdebt 0
scoreboard players set @a fg.rburst 0
scoreboard players set @a fg.rlastserial 0
scoreboard players set @a fg.aimticks 0
scoreboard players set @a fg.aiming 0
scoreboard players set @a fg.aimserial 0
scoreboard players set @a fg.aimmod 0
scoreboard players set @a fg.aimapplied -1
scoreboard players set @a fg.scopen 0
scoreboard players set @a fg.scopeticks 0
scoreboard players set @a fg.scopeserial 0
scoreboard players set @a fg.scopelast -1000000
scoreboard players set @a fg.scopeready 0
scoreboard players set @a fg.aimoverride 0
scoreboard players set @a fg.bolt 0

tellraw @a {text:'Firearms 26.2 已加载。使用 /function firearms:give/all 获取八把正式武器。',color:'green'}
