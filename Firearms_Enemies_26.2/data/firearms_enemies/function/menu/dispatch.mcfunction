execute if score @s fge.menu matches 601 positioned ^ ^ ^5 run function firearms_enemies:spawn/infected_gunner
execute if score @s fge.menu matches 602 positioned ^ ^ ^5 run function firearms_enemies:spawn/infected_sniper
execute if score @s fge.menu matches 603 positioned ^ ^ ^5 run function firearms_enemies:spawn/infected_grenadier
execute if score @s fge.menu matches 604 run function firearms_enemies:debug/status
execute if score @s fge.menu matches 611 run dialog show @s firearms_enemies:menu/confirm/clear_all
execute if score @s fge.menu matches 612 run function firearms_enemies:admin/clear_all
execute if score @s fge.menu matches 621 run function firearms_enemies:menu/chat/api_help

execute if score @s fge.menu matches 601..604 run function firearms_enemies:menu/return/enemies
execute if score @s fge.menu matches 612 run dialog show @s firearms_enemies:menu/enemies
execute if score @s fge.menu matches 621 run dialog show @s firearms_enemies:menu/enemies

scoreboard players set @s fge.menu 0
scoreboard players enable @s fge.menu
