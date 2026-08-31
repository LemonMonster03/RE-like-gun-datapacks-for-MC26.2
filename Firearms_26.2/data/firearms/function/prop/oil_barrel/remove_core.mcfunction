tag @e[tag=fg.prop_focus] remove fg.prop_focus
tag @s add fg.prop_focus
execute as @e[tag=fg.explosive_prop] if score @s fg.propid = @e[type=minecraft:marker,tag=fg.oil_barrel_core,tag=fg.prop_focus,limit=1] fg.propid run tag @s add fg.prop_focus
function #firearms:oil_barrel_removed
kill @e[tag=fg.prop_focus]
