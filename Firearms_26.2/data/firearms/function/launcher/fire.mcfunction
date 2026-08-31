# Convert the selected homogeneous grenade type into a projectile configuration.
scoreboard players set @s fg.gtype 1
data modify storage firearms:runtime launcher_item set value {id:'minecraft:firework_star',count:1,components:{'minecraft:custom_name':{text:'飞行中的高爆榴弹',color:'red',italic:false},'minecraft:custom_data':{firearms_launcher_projectile:{schema:1,type:'grenade_he'}}}}
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} run scoreboard players set @s fg.gtype 2
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} run data modify storage firearms:runtime launcher_item set value {id:'minecraft:magma_cream',count:1,components:{'minecraft:custom_name':{text:'飞行中的燃烧榴弹',color:'gold',italic:false},'minecraft:custom_data':{firearms_launcher_projectile:{schema:1,type:'grenade_incendiary'}}}}
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} run scoreboard players set @s fg.gtype 3
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} run data modify storage firearms:runtime launcher_item set value {id:'minecraft:fermented_spider_eye',count:1,components:{'minecraft:custom_name':{text:'飞行中的生物榴弹',color:'dark_green',italic:false},'minecraft:custom_data':{firearms_launcher_projectile:{schema:1,type:'grenade_bioweapon'}}}}
function firearms:launcher/launch
