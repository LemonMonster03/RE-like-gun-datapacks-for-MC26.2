scoreboard players operation @s fge.target = @e[tag=fge.probe,limit=1] fg.actor
scoreboard players set @s fge.found 1
tag @e[tag=fge.probe,limit=1] add fge.current_target
function firearms_enemies:marker/create_aim
function firearms_enemies:target/sample
function #firearms_enemies:target_acquired
function firearms_enemies:target/evaluate_range
execute if entity @s[tag=fge.grenadier] if score @s fge.inrange matches 1 run function firearms_enemies:grenadier/check_vertical
execute if score @s fge.inrange matches 1 run function firearms_enemies:combat/start_aim_initial
execute if score @s fge.inrange matches 0 run scoreboard players set @s fge.state 6
