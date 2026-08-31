scoreboard players operation @s fg.stununtil = #now fg.now
scoreboard players add @s fg.stununtil 60
scoreboard players operation @s fg.stunowner = @e[type=minecraft:item,tag=fg.aoe_origin,limit=1] fg.actor
execute unless data entity @s {NoAI:1b} run tag @s add fg.stun_managed
execute if entity @s[tag=fg.stun_managed] run data merge entity @s {NoAI:1b}
tag @s add fg.stunned
function #firearms:stun_start
