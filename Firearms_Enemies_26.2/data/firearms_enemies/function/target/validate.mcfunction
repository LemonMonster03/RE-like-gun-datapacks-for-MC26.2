function firearms_enemies:target/resolve
execute unless entity @e[tag=fge.current_target,limit=1] run function firearms_enemies:target/release

scoreboard players set #detect fge.tmp 1
execute store result storage firearms_enemies:runtime macro.acquire int 1 run scoreboard players get @s fge.acquire
execute if entity @e[tag=fge.current_target,limit=1] run function firearms_enemies:target/check_detect_range with storage firearms_enemies:runtime macro
execute as @e[tag=fge.current_target,limit=1] if predicate firearms_enemies:is_invisible unless entity @s[distance=..8] run scoreboard players set #detect fge.tmp 0

tag @e[tag=fge.current_target] add fge.vision_target
execute if entity @e[tag=fge.current_target,limit=1] if score #detect fge.tmp matches 1 run function firearms_enemies:vision/start
execute if entity @e[tag=fge.current_target,limit=1] if score #detect fge.tmp matches 0 run scoreboard players set @s fge.los 0
execute if entity @e[tag=fge.current_target,limit=1] if score @s fge.los matches 0 run function firearms_enemies:target/occluded
execute if entity @e[tag=fge.current_target,limit=1] if score @s fge.los matches 1 run function firearms_enemies:target/visible

tag @e remove fge.current_target
tag @e remove fge.vision_target
