function #firearms:stun_end
execute if entity @s[tag=fg.stun_managed] run data merge entity @s {NoAI:0b}
tag @s remove fg.stun_managed
tag @s remove fg.stunned
scoreboard players reset @s fg.stununtil
scoreboard players reset @s fg.stunowner
