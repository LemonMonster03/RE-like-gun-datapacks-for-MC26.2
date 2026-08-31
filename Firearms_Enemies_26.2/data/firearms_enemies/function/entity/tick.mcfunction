scoreboard players add @s fge.wasstun 0
execute if entity @s[tag=fg.stunned] run function firearms_enemies:combat/stun_tick
execute unless entity @s[tag=fg.stunned] if score @s fge.wasstun matches 1 run function firearms_enemies:combat/stun_recover

execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 4 run function firearms_enemies:combat/reload_tick
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 0 if score @s fge.scanphase = #phase fge.tmp run function firearms_enemies:target/search
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 1..3 run function firearms_enemies:target/validate
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 5..6 run function firearms_enemies:target/validate

execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] unless entity @s[tag=fge.telegraphed_sniper] if score @s fge.state matches 1 run function firearms_enemies:combat/aim_tick
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if entity @s[tag=fge.telegraphed_sniper] if score @s fge.state matches 1 run function firearms_enemies:sniper/aim_tick
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if entity @s[tag=fge.telegraphed_sniper] if score @s fge.state matches 8 run function firearms_enemies:sniper/lock_tick
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 3 run function firearms_enemies:combat/pause_tick
execute unless entity @s[tag=fg.stunned] unless entity @s[tag=fge.exhausted] if score @s fge.state matches 2 run function firearms_enemies:combat/fire_tick
