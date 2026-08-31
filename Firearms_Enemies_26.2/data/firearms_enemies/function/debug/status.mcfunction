tag @a remove fge.debug_viewer
execute if entity @s[type=minecraft:player] run tag @s add fge.debug_viewer
execute if entity @s[tag=fge.shooter] run function firearms_enemies:debug/status_self
execute unless entity @s[tag=fge.shooter] as @e[tag=fge.shooter,sort=nearest,limit=1,distance=..64] run function firearms_enemies:debug/status_self
execute if entity @s[type=minecraft:player] unless entity @e[tag=fge.shooter,distance=..64] run tellraw @s {text:'64 格内没有已注册的远程敌人。',color:'red'}
tag @a remove fge.debug_viewer
