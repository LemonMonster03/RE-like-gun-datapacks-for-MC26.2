scoreboard players set @s fg.pradius 50
execute if data storage firearms:api prop_explosion.radius_x10 store result score @s fg.pradius run data get storage firearms:api prop_explosion.radius_x10 1
execute unless score @s fg.pradius matches 1..160 run scoreboard players set @s fg.pradius 50
scoreboard players operation @s fg.pmax = @s fg.pradius
scoreboard players operation @s fg.pmax /= #five fg.const
scoreboard players add @s fg.pmax 1
scoreboard players set @s fg.pcount 0
data modify storage firearms:runtime macro.prop_radius set value 5.0d
execute store result storage firearms:runtime macro.prop_radius double 0.1 run scoreboard players get @s fg.pradius
tag @e[tag=fg.prop_candidate] remove fg.prop_candidate
tag @e[tag=fg.prop_target] remove fg.prop_target
function firearms:prop/explosion/scan with storage firearms:runtime macro
tag @e[tag=fg.prop_candidate] remove fg.prop_candidate
tag @e[tag=fg.prop_target] remove fg.prop_target
data remove storage firearms:runtime macro.prop_radius
