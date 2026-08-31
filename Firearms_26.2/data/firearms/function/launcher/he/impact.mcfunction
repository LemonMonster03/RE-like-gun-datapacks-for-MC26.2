particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 normal @a[distance=..96]
playsound minecraft:entity.generic.explode master @a[distance=..96] ~ ~ ~ 4.5 0.82
tag @e[tag=fg.aoe_origin] remove fg.aoe_origin
tag @e[tag=fg.aoe_candidate] remove fg.aoe_candidate
tag @a remove fg.launch_owner
tag @s add fg.aoe_origin
execute as @a[distance=..128] if score @s fg.actor = @e[type=minecraft:item,tag=fg.aoe_origin,limit=1] fg.actor run tag @s add fg.launch_owner
execute as @e[distance=..5,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thtype 3
scoreboard players set @s fg.thmax 16
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process
data modify storage firearms:api prop_explosion set value {schema:1,radius_x10:50}
function firearms:api/prop/explosion
function #firearms:he_grenade_impact
