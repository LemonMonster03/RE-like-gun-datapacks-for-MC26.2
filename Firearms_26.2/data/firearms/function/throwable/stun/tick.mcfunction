execute if score @s fg.stununtil <= #now fg.now run function firearms:throwable/stun/end
execute if entity @s[tag=fg.stunned] run function #firearms:stun_tick
execute if entity @s[tag=fg.stunned] run scoreboard players operation @s fg.math = #now fg.now
execute if entity @s[tag=fg.stunned] run scoreboard players operation @s fg.math %= #five fg.const
execute if entity @s[tag=fg.stunned,scores={fg.math=0}] run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.45 0.3 0.02 3 normal @a[distance=..48]
