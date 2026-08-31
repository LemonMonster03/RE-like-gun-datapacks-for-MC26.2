# Configure the shared segmented projectile framework as a straight-flying rocket.
scoreboard players set @s fg.gtype 4
data modify storage firearms:runtime launcher_item set value {id:'minecraft:firework_rocket',count:1,components:{'minecraft:custom_name':{text:'飞行中的火箭弹',color:'dark_red',italic:false},'minecraft:custom_data':{firearms_launcher_projectile:{schema:1,type:'rocket'}}}}
function firearms:launcher/launch
