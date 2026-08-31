scoreboard players set @s fg.hit 1
scoreboard players set @s fg.eligible 0
scoreboard players set @s fg.hitbonus 0
scoreboard players set @s fg.hitmultadd 0
scoreboard players set @s fg.crit 0
scoreboard players set @s fg.helmetcrit 0
scoreboard players operation @s fg.shotdamage = @s fg.damage
scoreboard players set @s fg.lastzone 1
scoreboard players set @s fg.lastroll 10001
scoreboard players set @s fg.lastchance 0
scoreboard players set @s fg.lastcrit 0

# Horizontal collision is already proven by the body AABB; compare only hit Y with the target's eye Y.
execute unless entity @s[tag=fg.api_shooter,tag=!fg.api_critical] if data entity @e[tag=fg.hit_target,limit=1] Health unless entity @e[tag=fg.hit_target,tag=fg.no_headshot,limit=1] run function firearms:ray/check_head

execute unless entity @s[tag=fg.api_shooter,tag=!fg.api_critical] if score @s fg.eligible matches 1 run function firearms:critical/roll
execute unless entity @s[tag=fg.api_shooter] if score @s fg.eligible matches 1 if score @s fg.crit matches 1 if items entity @e[tag=fg.hit_target,limit=1] armor.head *[minecraft:custom_data~{firearms_armor:{schema:1,id:'ballistic_helmet'}}] run function firearms:critical/helmet_reduce
execute if score @s fg.eligible matches 1 if score @s fg.crit matches 0 at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.35 1.8
function firearms:ray/hit
