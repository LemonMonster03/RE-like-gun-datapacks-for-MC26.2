tag @e[type=minecraft:marker,tag=fg.pool_new] remove fg.pool_new
summon minecraft:marker ~ ~ ~ {Tags:['fg.incendiary_pool','fg.pool_new']}
scoreboard players operation @e[type=minecraft:marker,tag=fg.pool_new,limit=1,sort=nearest] fg.actor = @s fg.actor
scoreboard players operation @e[type=minecraft:marker,tag=fg.pool_new,limit=1,sort=nearest] fg.pooluntil = #now fg.now
scoreboard players add @e[type=minecraft:marker,tag=fg.pool_new,limit=1,sort=nearest] fg.pooluntil 160
scoreboard players set @e[type=minecraft:marker,tag=fg.pool_new,limit=1,sort=nearest] fg.pooltick 0
tag @e[type=minecraft:marker,tag=fg.pool_new,limit=1,sort=nearest] remove fg.pool_new
scoreboard players set @s fg.gsteps 33
