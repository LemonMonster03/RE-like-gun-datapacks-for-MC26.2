function firearms:reload/cancel
function firearms:scope/cancel
function firearms:aim/reset
function firearms:state/load_held
function firearms:stats/calculate

# Return every homogeneous gun-held round before changing the selected type.
execute store result storage firearms:runtime macro.amount int 1 run scoreboard players get @s fg.loaded
execute if score @s fg.loaded matches 1.. run function firearms:ammo/refund with storage firearms:runtime macro
data modify storage firearms:runtime held.ammo.loaded set value 0

scoreboard players set @s fg.math 0
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_he'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} run scoreboard players set @s fg.math 2
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} run scoreboard players set @s fg.math 3
execute if score @s fg.math matches 1 run data modify storage firearms:runtime held.ammo.type set value 'grenade_incendiary'
execute if score @s fg.math matches 1 run data modify storage firearms:runtime held.ammo.label set value '燃烧'
execute if score @s fg.math matches 2 run data modify storage firearms:runtime held.ammo.type set value 'grenade_bioweapon'
execute if score @s fg.math matches 2 run data modify storage firearms:runtime held.ammo.label set value '生物'
execute if score @s fg.math matches 3 run data modify storage firearms:runtime held.ammo.type set value 'grenade_he'
execute if score @s fg.math matches 3 run data modify storage firearms:runtime held.ammo.label set value '高爆'
execute if score @s fg.math matches 0 run data modify storage firearms:runtime held.ammo.type set value 'grenade_he'
execute if score @s fg.math matches 0 run data modify storage firearms:runtime held.ammo.label set value '高爆'
data modify storage firearms:runtime held.ammo.reserve set value 0
function firearms:state/write_held
execute at @s run playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 0.7 1.5
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_he'}}} run title @s actionbar {text:'已退弹 · 已选择高爆榴弹',color:'red'}
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} run title @s actionbar {text:'已退弹 · 已选择燃烧榴弹',color:'gold'}
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} run title @s actionbar {text:'已退弹 · 已选择生物榴弹',color:'dark_green'}
