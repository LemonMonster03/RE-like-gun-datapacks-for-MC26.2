# Remove only stale safety carriers; normal carriers live for one function chain.
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
tag @a remove fg.shooter
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
tag @a remove fg.throw_owner
tag @e remove fg.throw_owner_entity
tag @e remove fg.launch_origin
tag @e remove fg.launch_candidate
tag @e remove fg.launch_target
tag @e remove fg.launch_direct_target
tag @a remove fg.launch_owner
tag @a remove fg.burn_target
tag @e remove fg.prop_hit
tag @e remove fg.prop_focus
tag @e remove fg.prop_origin
tag @e remove fg.prop_owner
tag @e remove fg.prop_candidate
tag @e remove fg.prop_target

execute in minecraft:overworld run function firearms:workbench/dimension_tick
execute in minecraft:the_nether run function firearms:workbench/dimension_tick
execute in minecraft:the_end run function firearms:workbench/dimension_tick

# Only demo weakpoints use the built-in follower. Animated Java locators update their own markers.
execute as @e[type=minecraft:marker,tag=fg.follow_receiver] at @s run function firearms:weakpoint/follow

execute store result score #now fg.now run time query gametime
execute in minecraft:overworld run function firearms:prop/dimension_tick
execute in minecraft:the_nether run function firearms:prop/dimension_tick
execute in minecraft:the_end run function firearms:prop/dimension_tick
execute in minecraft:overworld as @e[type=minecraft:item,tag=fg.launcher_projectile] at @s run function firearms:launcher/projectile/tick
execute in minecraft:the_nether as @e[type=minecraft:item,tag=fg.launcher_projectile] at @s run function firearms:launcher/projectile/tick
execute in minecraft:the_end as @e[type=minecraft:item,tag=fg.launcher_projectile] at @s run function firearms:launcher/projectile/tick
execute in minecraft:overworld as @e[type=minecraft:marker,tag=fg.incendiary_pool] at @s run function firearms:launcher/incendiary/pool_tick
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=fg.incendiary_pool] at @s run function firearms:launcher/incendiary/pool_tick
execute in minecraft:the_end as @e[type=minecraft:marker,tag=fg.incendiary_pool] at @s run function firearms:launcher/incendiary/pool_tick
execute in minecraft:overworld as @e[tag=fg.incendiary_burning] at @s run function firearms:launcher/incendiary/burning_tick
execute in minecraft:the_nether as @e[tag=fg.incendiary_burning] at @s run function firearms:launcher/incendiary/burning_tick
execute in minecraft:the_end as @e[tag=fg.incendiary_burning] at @s run function firearms:launcher/incendiary/burning_tick
execute in minecraft:overworld as @e[type=minecraft:item,tag=fg.throwable] at @s if score @s fg.thuntil <= #now fg.now run function firearms:throwable/detonate
execute in minecraft:the_nether as @e[type=minecraft:item,tag=fg.throwable] at @s if score @s fg.thuntil <= #now fg.now run function firearms:throwable/detonate
execute in minecraft:the_end as @e[type=minecraft:item,tag=fg.throwable] at @s if score @s fg.thuntil <= #now fg.now run function firearms:throwable/detonate
execute in minecraft:overworld as @e[tag=fg.stunned] at @s run function firearms:throwable/stun/tick
execute in minecraft:the_nether as @e[tag=fg.stunned] at @s run function firearms:throwable/stun/tick
execute in minecraft:the_end as @e[tag=fg.stunned] at @s run function firearms:throwable/stun/tick
execute as @a[tag=!fg.init] run function firearms:player/init
execute as @a[tag=fg.init] at @s run function firearms:player/tick

# Dialog buttons only submit permission-level-0 trigger values. Dispatch them as the clicking player.
execute as @a[scores={fg.menu=1..}] at @s run function firearms:menu/dispatch

# A score/NBT edit cannot leave the FOV modifier stuck on a player.
execute as @a[tag=!fg.gun,scores={fg.aimmod=1}] run function firearms:aim/release
execute as @a[scores={fg.aimmod=1,fg.aimon=0}] run function firearms:aim/release
execute as @a[scores={fg.aimmod=0}] run attribute @s minecraft:movement_speed modifier remove firearms:aim_slow
