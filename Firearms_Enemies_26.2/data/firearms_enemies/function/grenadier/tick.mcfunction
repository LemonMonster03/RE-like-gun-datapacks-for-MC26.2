scoreboard players add @s fge.wasstun 0
execute if entity @s[tag=fg.stunned] run function firearms_enemies:combat/stun_tick
execute unless entity @s[tag=fg.stunned] if score @s fge.wasstun matches 1 run function firearms_enemies:grenadier/stun_recover

execute unless entity @s[tag=fg.stunned] if score @s fge.state matches 0 if score @s fge.scanphase = #phase fge.tmp run function firearms_enemies:target/search
execute unless entity @s[tag=fg.stunned] if score @s fge.state matches 1 run function firearms_enemies:target/validate
execute unless entity @s[tag=fg.stunned] if score @s fge.state matches 5..6 run function firearms_enemies:target/validate
execute unless entity @s[tag=fg.stunned] if score @s fge.state matches 1 run function firearms_enemies:grenadier/prime_tick
execute unless entity @s[tag=fg.stunned] if score @s fge.state matches 9 run function firearms_enemies:grenadier/cooldown_tick
