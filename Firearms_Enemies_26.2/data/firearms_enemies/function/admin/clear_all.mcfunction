execute in minecraft:overworld as @e[tag=fge.shooter] at @s run function firearms_enemies:api/unregister
execute in minecraft:the_nether as @e[tag=fge.shooter] at @s run function firearms_enemies:api/unregister
execute in minecraft:the_end as @e[tag=fge.shooter] at @s run function firearms_enemies:api/unregister
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=fge.aim_point]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=fge.aim_point]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=fge.aim_point]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=fge.throw_point]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=fge.throw_point]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=fge.throw_point]
execute in minecraft:overworld run tag @e remove fge.player_ally
execute in minecraft:the_nether run tag @e remove fge.player_ally
execute in minecraft:the_end run tag @e remove fge.player_ally
tellraw @a {text:'Firearms Enemies：已注销三个原版维度中加载的射手并清理伴生状态。',color:'yellow'}
