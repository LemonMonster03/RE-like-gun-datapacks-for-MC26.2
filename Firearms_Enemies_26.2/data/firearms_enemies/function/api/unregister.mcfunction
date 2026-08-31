execute if entity @s[tag=fge.shooter] run function firearms_enemies:target/release_silent
function firearms_enemies:movement/clear
execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/prime_cancel
execute if entity @s[tag=fge.grenadier] run function firearms_enemies:grenadier/marker/remove
execute if entity @s[tag=fge.flash_added] run tag @s remove fg.flash_vulnerable
tag @s remove fge.flash_added
tag @s remove fge.shooter
tag @s remove fge.exhausted
tag @s remove fge.telegraphed_sniper
tag @s remove fge.grenadier
scoreboard players reset @s fge.state
scoreboard players reset @s fge.target
scoreboard players reset @s fge.lockend
scoreboard players reset @s fge.aimleft
scoreboard players reset @s fge.lockleft
scoreboard players reset @s fge.lockrange
scoreboard players reset @s fge.throwready
scoreboard players reset @s fge.throwleft
scoreboard players reset @s fge.throwok
scoreboard players reset @s fge.throwdy
scoreboard players reset @s fge.throwdist
