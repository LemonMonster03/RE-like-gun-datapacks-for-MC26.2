particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 normal @a[distance=..96]
playsound minecraft:entity.generic.explode master @a[distance=..96] ~ ~ ~ 4.5 0.9

execute as @e[type=!minecraft:item,distance=..128] if data entity @s Health if score @s fg.actor = @e[type=minecraft:item,tag=fg.aoe_origin,limit=1] fg.actor run tag @s add fg.throw_owner_entity
execute as @e[distance=..5,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thtype 6
scoreboard players set @s fg.thmax 16
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process

data modify storage firearms:api prop_explosion set value {schema:1,radius_x10:50}
function firearms:api/prop/explosion

function #firearms:enemy_grenade_detonate
