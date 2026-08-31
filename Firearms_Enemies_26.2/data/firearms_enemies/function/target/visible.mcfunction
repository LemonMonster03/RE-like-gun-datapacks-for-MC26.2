function firearms_enemies:target/evaluate_range
execute if entity @s[tag=fge.grenadier] if score @s fge.inrange matches 1 run function firearms_enemies:grenadier/check_vertical
execute if score @s fge.state matches 5 if score @s fge.inrange matches 1 run function firearms_enemies:target/reappear
execute if score @s fge.state matches 5 if score @s fge.inrange matches 0 run scoreboard players set @s fge.state 6
execute if score @s fge.inrange matches 0 if score @s fge.state matches 1..3 run function firearms_enemies:target/leave_fire_range
execute if score @s fge.inrange matches 1 if score @s fge.state matches 6 run function firearms_enemies:combat/start_aim_initial
execute if score @s fge.inrange matches 1 if score #now fge.now >= @s fge.tracknext run function firearms_enemies:target/sample
