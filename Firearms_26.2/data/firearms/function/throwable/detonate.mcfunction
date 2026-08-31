# Temporary tags are global only for this synchronous detonation chain.
tag @e remove fg.aoe_origin
tag @e remove fg.aoe_candidate
tag @e remove fg.aoe_target
tag @a remove fg.throw_owner
tag @e remove fg.throw_owner_entity
kill @e[type=minecraft:marker,tag=fg.aoe_eye]
tag @s add fg.aoe_origin

execute if score @s fg.thtype matches 1 run function firearms:throwable/hand_grenade/detonate
execute if score @s fg.thtype matches 2 run function firearms:throwable/flashbang/detonate
execute if score @s fg.thtype matches 3 run function firearms:throwable/enemy_grenade/detonate

tag @e remove fg.aoe_candidate
tag @e remove fg.aoe_target
tag @a remove fg.throw_owner
tag @e remove fg.throw_owner_entity
kill @e[type=minecraft:marker,tag=fg.aoe_eye]
kill @s
