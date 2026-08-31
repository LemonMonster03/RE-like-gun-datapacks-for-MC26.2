scoreboard players set @e[type=minecraft:marker,tag=fg.prop_target,limit=1] fg.actor 0
execute if score @s fg.actor matches 1.. run scoreboard players operation @e[type=minecraft:marker,tag=fg.prop_target,limit=1] fg.actor = @s fg.actor
execute as @e[type=minecraft:marker,tag=fg.prop_target,limit=1] at @s run function firearms:prop/oil_barrel/trigger
