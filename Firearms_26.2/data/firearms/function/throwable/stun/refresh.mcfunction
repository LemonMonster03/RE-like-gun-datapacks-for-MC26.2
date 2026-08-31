scoreboard players operation @s fg.stununtil = #now fg.now
scoreboard players add @s fg.stununtil 60
scoreboard players operation @s fg.stunowner = @e[type=minecraft:item,tag=fg.aoe_origin,limit=1] fg.actor
function #firearms:stun_refresh
