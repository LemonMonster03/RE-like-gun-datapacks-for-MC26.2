particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 normal @a[distance=..128]
playsound minecraft:entity.generic.explode master @a[distance=..128] ~ ~ ~ 6.0 0.62
tag @e[tag=fg.aoe_origin] remove fg.aoe_origin
tag @e[tag=fg.aoe_candidate] remove fg.aoe_candidate
tag @e[tag=fg.aoe_target] remove fg.aoe_target
tag @a remove fg.launch_owner
tag @s add fg.aoe_origin
execute as @a[distance=..192] if score @s fg.actor = @e[type=minecraft:item,tag=fg.aoe_origin,limit=1] fg.actor run tag @s add fg.launch_owner

# Boss integrations receive the direct target before built-in damage is applied.
execute if score @s fg.gdirect matches 1 as @e[tag=fg.launch_direct_target,limit=1] at @s run function #firearms:rocket_direct_hit
execute if score @s fg.gdirect matches 1 as @e[tag=fg.launch_direct_target,limit=1] at @s run function firearms:rocket/direct/damage

execute as @e[distance=..7,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thtype 8
scoreboard players set @s fg.thmax 24
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process

data modify storage firearms:api prop_explosion set value {schema:1,radius_x10:70}
function firearms:api/prop/explosion
function #firearms:rocket_impact
