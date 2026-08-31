tag @e[tag=fg.prop_target] remove fg.prop_target
tag @e[tag=fg.prop_candidate,sort=nearest,limit=1] add fg.prop_target
tag @e[tag=fg.prop_target,limit=1] remove fg.prop_candidate
scoreboard players set @s fg.plos 0
scoreboard players set @s fg.psteps 0
execute positioned ~ ~0.25 ~ facing entity @e[type=minecraft:marker,tag=fg.prop_target,limit=1] feet run function firearms:prop/explosion/los_step
execute if score @s fg.plos matches 1 run function firearms:prop/explosion/trigger_target
tag @e[tag=fg.prop_target] remove fg.prop_target
scoreboard players add @s fg.pcount 1
execute if score @s fg.pcount matches ..63 if entity @e[tag=fg.prop_candidate] run function firearms:prop/explosion/process
