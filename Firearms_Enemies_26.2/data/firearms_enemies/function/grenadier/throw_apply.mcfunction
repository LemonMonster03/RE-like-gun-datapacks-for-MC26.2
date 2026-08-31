scoreboard players set @s fge.throwtries 0
function firearms_enemies:grenadier/random_offset
execute store result score @s fge.throwx run data get entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] Pos[0] 100
execute store result score @s fge.throwz run data get entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] Pos[2] 100
scoreboard players operation @s fge.throwx += @s fge.randx
scoreboard players operation @s fge.throwz += @s fge.randz
execute store result entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] Pos[0] double 0.01 run scoreboard players get @s fge.throwx
execute store result entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] Pos[2] double 0.01 run scoreboard players get @s fge.throwz

scoreboard players set @s fge.throwband 1
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=8.001..10,limit=1] run scoreboard players set @s fge.throwband 2
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=10.001..12,limit=1] run scoreboard players set @s fge.throwband 3
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=12.001..14,limit=1] run scoreboard players set @s fge.throwband 4
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=14.001..16,limit=1] run scoreboard players set @s fge.throwband 5
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=16.001..18,limit=1] run scoreboard players set @s fge.throwband 6
execute if entity @e[type=minecraft:marker,tag=fge.throw_current,distance=18.001..,limit=1] run scoreboard players set @s fge.throwband 7
execute if score @s fge.throwband matches 1 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~0.75 ~
execute if score @s fge.throwband matches 2 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~1.25 ~
execute if score @s fge.throwband matches 3 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~2.0 ~
execute if score @s fge.throwband matches 4 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~3.0 ~
execute if score @s fge.throwband matches 5 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~4.5 ~
execute if score @s fge.throwband matches 6 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~7.0 ~
execute if score @s fge.throwband matches 7 as @e[type=minecraft:marker,tag=fge.throw_current,limit=1] at @s run tp @s ~ ~11.0 ~

data modify storage firearms:runtime throwable_launch set value {type:3,fuse_ticks:60,throw_speed_x1000:1100,item:{id:'minecraft:fire_charge',count:1,components:{'minecraft:custom_name':{text:'敌方高爆手雷',color:'gold',italic:false},'minecraft:custom_data':{firearms_enemy_explosive:{schema:1,id:'enemy_grenade'}}}}}
execute store result storage firearms:runtime throwable_launch.fuse_ticks int 1 run scoreboard players get @s fge.throwfuse
execute store result storage firearms:runtime throwable_launch.throw_speed_x1000 int 1 run scoreboard players get @s fge.throwspeed
execute anchored eyes facing entity @e[type=minecraft:marker,tag=fge.throw_current,limit=1] feet run function firearms:throwable/launch
execute at @s run playsound minecraft:entity.snowball.throw hostile @a[distance=..48] ~ ~ ~ 0.8 0.75
function #firearms_enemies:grenade_throw
item replace entity @s weapon.mainhand with air
scoreboard players operation @s fge.throwready = #now fge.now
scoreboard players operation @s fge.throwready += @s fge.throwcool
scoreboard players set @s fge.state 9
function firearms_enemies:target/release
scoreboard players set @s fge.state 9
scoreboard players operation @s fge.throwleft = @s fge.throwcool
