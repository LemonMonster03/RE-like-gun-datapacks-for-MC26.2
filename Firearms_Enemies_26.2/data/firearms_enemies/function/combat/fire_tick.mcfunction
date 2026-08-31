execute if score @s fge.loaded matches ..0 if score @s fge.reserve matches 1.. run function firearms_enemies:combat/start_reload
execute if score @s fge.loaded matches ..0 if score @s fge.reserve matches ..0 run function firearms_enemies:combat/exhausted
execute if score @s fge.state matches 2 if score @s fge.loaded matches 1.. if score #now fge.now >= @s fge.nextfire run function firearms_enemies:combat/fire
