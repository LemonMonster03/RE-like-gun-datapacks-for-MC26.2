scoreboard players set @s fge.state 1
scoreboard players operation @s fge.aimuntil = #now fge.now
scoreboard players operation @s fge.aimuntil += @s fge.reacquire
scoreboard players set @s fge.bindex 0
scoreboard players set @s fge.yawoff 0
function firearms_enemies:movement/apply_firing
function firearms_enemies:target/sample
execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/prime_start
function #firearms_enemies:aim_start
