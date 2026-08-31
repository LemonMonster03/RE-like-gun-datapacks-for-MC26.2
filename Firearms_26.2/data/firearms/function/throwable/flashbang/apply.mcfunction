# fg.flash_immune wins even if another function added the candidate tag later.
execute if entity @s[tag=fg.flash_immune] run tag @s remove fg.aoe_target
execute if entity @s[tag=fg.aoe_target,tag=fg.stunned] run function firearms:throwable/stun/refresh
execute if entity @s[tag=fg.aoe_target,tag=!fg.stunned] run function firearms:throwable/stun/start
