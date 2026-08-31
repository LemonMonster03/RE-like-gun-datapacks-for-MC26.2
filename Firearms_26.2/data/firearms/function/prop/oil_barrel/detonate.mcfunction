tag @e[tag=fg.aoe_origin] remove fg.aoe_origin
tag @e[tag=fg.aoe_candidate] remove fg.aoe_candidate
tag @e[tag=fg.aoe_target] remove fg.aoe_target
tag @e[tag=fg.prop_owner] remove fg.prop_owner
tag @s add fg.aoe_origin
tag @s add fg.prop_origin

execute if score @s fg.actor matches 1.. as @e[distance=..192] if data entity @s Health if score @s fg.actor = @e[type=minecraft:marker,tag=fg.prop_origin,limit=1] fg.actor run tag @s add fg.prop_owner
function #firearms:oil_barrel_pre_detonate
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
particle minecraft:flame ~ ~ ~ 0.9 0.7 0.9 0.08 28 normal @a[distance=..96]
playsound minecraft:entity.generic.explode master @a[distance=..96] ~ ~ ~ 4.5 0.88
summon minecraft:item ~ ~ ~ {Tags:['fg.prop_damage_source'],PickupDelay:32767s,Age:-32768s,NoGravity:1b,Invulnerable:1b,Invisible:1b,Item:{id:'minecraft:stone',count:1}}

execute as @e[distance=..5,sort=nearest] if data entity @s Health run tag @s add fg.aoe_candidate
scoreboard players set @s fg.thtype 7
scoreboard players set @s fg.thmax 16
scoreboard players set @s fg.thcount 0
execute if entity @e[tag=fg.aoe_candidate] run function firearms:throwable/aoe/process
kill @e[type=minecraft:item,tag=fg.prop_damage_source,limit=1]

data modify storage firearms:api prop_explosion set value {schema:1,radius_x10:50}
function firearms:api/prop/explosion
function #firearms:oil_barrel_post_detonate
tag @e[tag=fg.prop_owner] remove fg.prop_owner
tag @e[tag=fg.aoe_candidate] remove fg.aoe_candidate
tag @e[tag=fg.aoe_target] remove fg.aoe_target
function firearms:prop/oil_barrel/remove_core
