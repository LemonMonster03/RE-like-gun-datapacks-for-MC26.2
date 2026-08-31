scoreboard players set @s fg.hit 1
scoreboard players set @s fg.eligible 1
scoreboard players set @s fg.crit 0
scoreboard players operation @s fg.shotdamage = @s fg.damage
scoreboard players set @s fg.lastzone 3
scoreboard players set @s fg.lastroll 10001
scoreboard players set @s fg.lastchance 0
scoreboard players set @s fg.lastcrit 0
execute unless entity @s[tag=fg.api_shooter,tag=!fg.api_critical] run function firearms:critical/roll
execute if score @s fg.crit matches 0 at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.35 1.8
function firearms:ray/hit
