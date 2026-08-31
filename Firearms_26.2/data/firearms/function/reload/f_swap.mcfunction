# Packet result before this function: main hand = old offhand, offhand = gun.
summon minecraft:item_display ~ ~ ~ {Tags:['fg.swap_tmp'],view_range:0f}
item replace entity @e[type=minecraft:item_display,tag=fg.swap_tmp,limit=1,sort=nearest,distance=..0.1] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[type=minecraft:item_display,tag=fg.swap_tmp,limit=1,sort=nearest,distance=..0.1] contents
kill @e[type=minecraft:item_display,tag=fg.swap_tmp,limit=1,sort=nearest,distance=..0.1]
function firearms:state/load_held
execute if data storage firearms:runtime {held:{serial:0}} run function firearms:state/assign_serial
function firearms:ammo/prepare
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} if predicate firearms:is_sneaking run scoreboard players set @s fg.math 1
execute if score @s fg.math matches 1 run function firearms:launcher/ammo/cycle
execute if score @s fg.math matches 0 run function firearms:reload/start
