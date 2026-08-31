kill @e[type=minecraft:marker,tag=fg.hit_point]
kill @e[type=minecraft:marker,tag=fg.head_anchor]
summon minecraft:marker ~ ~ ~ {Tags:['fg.hit_point']}
execute as @e[tag=fg.hit_target,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:['fg.head_anchor']}
execute store result score @s fg.hity run data get entity @e[type=minecraft:marker,tag=fg.hit_point,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s fg.heady run data get entity @e[type=minecraft:marker,tag=fg.head_anchor,limit=1,sort=nearest] Pos[1] 1000
scoreboard players operation @s fg.headdelta = @s fg.hity
scoreboard players operation @s fg.headdelta -= @s fg.heady
execute if score @s fg.headdelta matches -350..300 run scoreboard players set @s fg.eligible 1
execute if score @s fg.eligible matches 1 run scoreboard players set @s fg.lastzone 2
kill @e[type=minecraft:marker,tag=fg.hit_point]
kill @e[type=minecraft:marker,tag=fg.head_anchor]
