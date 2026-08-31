execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players operation @s fge.loaded = @s fge.mag
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players operation @s fge.reserve = @s fge.maxres
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run tag @s remove fge.exhausted
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.state 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.target 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.bindex 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.lockend 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.aimleft 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.lockleft 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run scoreboard players set @s fge.lockrange 0
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run function firearms_enemies:marker/remove_aim
execute if entity @s[tag=fge.shooter,tag=!fge.grenadier] run function firearms_enemies:movement/clear
