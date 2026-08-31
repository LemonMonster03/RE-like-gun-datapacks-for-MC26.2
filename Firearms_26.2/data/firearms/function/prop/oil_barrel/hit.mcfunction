scoreboard players set @s fg.hit 1
function firearms:state/assign_actor
tag @e[tag=fg.prop_hit] remove fg.prop_hit
tag @e[tag=fg.prop_focus] remove fg.prop_focus
tag @e[type=minecraft:interaction,tag=fg.oil_barrel_hitbox,dx=0,dy=0,dz=0,limit=1,sort=nearest] add fg.prop_hit
execute as @e[type=minecraft:marker,tag=fg.oil_barrel_core] if score @s fg.propid = @e[type=minecraft:interaction,tag=fg.prop_hit,limit=1] fg.propid run tag @s add fg.prop_focus
scoreboard players operation @e[type=minecraft:marker,tag=fg.prop_focus,limit=1] fg.actor = @s fg.actor
execute as @e[type=minecraft:marker,tag=fg.prop_focus,limit=1] at @s run function firearms:prop/oil_barrel/trigger
particle minecraft:flame ~ ~ ~ 0.08 0.08 0.08 0.01 3 normal @a[distance=..64]
tag @e[tag=fg.prop_hit] remove fg.prop_hit
tag @e[tag=fg.prop_focus] remove fg.prop_focus
