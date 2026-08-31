execute if score @s fge.state matches 1 run function #firearms_enemies:grenade_prime_cancel
item replace entity @s weapon.mainhand with air
scoreboard players set @s fge.throwleft 0
