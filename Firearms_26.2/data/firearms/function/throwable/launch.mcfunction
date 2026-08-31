# Synchronous API. Caller is the thrower; storage firearms:runtime throwable_launch is consumed now.
function firearms:state/assign_actor
execute store result score #now fg.now run time query gametime

kill @e[type=minecraft:marker,tag=fg.throw_pos]
kill @e[type=minecraft:marker,tag=fg.throw_dir]
tag @e[type=minecraft:item,tag=fg.throw_new] remove fg.throw_new

execute anchored eyes positioned ^ ^-0.15 ^0.5 run summon minecraft:marker ~ ~ ~ {Tags:['fg.throw_pos']}
execute anchored eyes positioned ^ ^-0.15 ^1.5 run summon minecraft:marker ~ ~ ~ {Tags:['fg.throw_dir']}

# Position scale 50 keeps the calculation valid across the full vanilla world border.
execute store result score @s fg.thvx run data get entity @e[type=minecraft:marker,tag=fg.throw_dir,limit=1] Pos[0] 50
execute store result score @s fg.thvy run data get entity @e[type=minecraft:marker,tag=fg.throw_dir,limit=1] Pos[1] 50
execute store result score @s fg.thvz run data get entity @e[type=minecraft:marker,tag=fg.throw_dir,limit=1] Pos[2] 50
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.throw_pos,limit=1] Pos[0] 50
scoreboard players operation @s fg.thvx -= @s fg.math
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.throw_pos,limit=1] Pos[1] 50
scoreboard players operation @s fg.thvy -= @s fg.math
execute store result score @s fg.math run data get entity @e[type=minecraft:marker,tag=fg.throw_pos,limit=1] Pos[2] 50
scoreboard players operation @s fg.thvz -= @s fg.math

execute store result score @s fg.thspeed run data get storage firearms:runtime throwable_launch.throw_speed_x1000
scoreboard players operation @s fg.thvx *= @s fg.thspeed
scoreboard players operation @s fg.thvy *= @s fg.thspeed
scoreboard players operation @s fg.thvz *= @s fg.thspeed
scoreboard players operation @s fg.thvx /= #thousand fg.const
scoreboard players operation @s fg.thvy /= #thousand fg.const
scoreboard players operation @s fg.thvz /= #thousand fg.const

execute at @e[type=minecraft:marker,tag=fg.throw_pos,limit=1] run summon minecraft:item ~ ~ ~ {Tags:['fg.throwable','fg.throw_new'],PickupDelay:32767s,Age:-32768s,Invulnerable:1b,Item:{id:'minecraft:stick',count:1}}
data modify entity @e[type=minecraft:item,tag=fg.throw_new,limit=1] Item set from storage firearms:runtime throwable_launch.item
execute store result score @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.thtype run data get storage firearms:runtime throwable_launch.type
execute store result score @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.thfuse run data get storage firearms:runtime throwable_launch.fuse_ticks
scoreboard players operation @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.thuntil = #now fg.now
scoreboard players operation @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.thuntil += @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.thfuse
scoreboard players operation @e[type=minecraft:item,tag=fg.throw_new,limit=1] fg.actor = @s fg.actor
execute store result entity @e[type=minecraft:item,tag=fg.throw_new,limit=1] Motion[0] double 0.02 run scoreboard players get @s fg.thvx
execute store result entity @e[type=minecraft:item,tag=fg.throw_new,limit=1] Motion[1] double 0.02 run scoreboard players get @s fg.thvy
execute store result entity @e[type=minecraft:item,tag=fg.throw_new,limit=1] Motion[2] double 0.02 run scoreboard players get @s fg.thvz

tag @e[type=minecraft:item,tag=fg.throw_new,limit=1] remove fg.throw_new
kill @e[type=minecraft:marker,tag=fg.throw_pos]
kill @e[type=minecraft:marker,tag=fg.throw_dir]
