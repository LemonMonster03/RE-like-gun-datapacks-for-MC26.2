$tag @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=!fg.prop_armed,distance=..$(prop_radius),sort=nearest] add fg.prop_candidate
execute if entity @e[tag=fg.prop_candidate] run function firearms:prop/explosion/process
