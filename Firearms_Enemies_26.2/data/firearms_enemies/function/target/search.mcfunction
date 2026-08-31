scoreboard players set @s fge.found 0
scoreboard players set @s fge.count 0
execute store result storage firearms_enemies:runtime macro.acquire int 1 run scoreboard players get @s fge.acquire
function firearms_enemies:target/add_candidates with storage firearms_enemies:runtime macro
tag @s remove fge.candidate
execute as @e[tag=fge.candidate] run function firearms:state/assign_actor
execute if entity @e[tag=fge.candidate] run function firearms_enemies:target/test_next
tag @e remove fge.candidate
tag @e remove fge.probe
tag @e remove fge.vision_target
tag @e remove fge.current_target
