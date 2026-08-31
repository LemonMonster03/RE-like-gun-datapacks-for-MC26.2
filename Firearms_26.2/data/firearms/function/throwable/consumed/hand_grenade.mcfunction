advancement revoke @s only firearms:input/consume_hand_grenade
data modify storage firearms:runtime throwable_launch set value {type:1,fuse_ticks:50,throw_speed_x1000:1100,item:{id:'minecraft:stick',count:1,components:{'minecraft:item_model':'minecraft:fire_charge','minecraft:custom_name':{text:'手雷',color:'dark_green',bold:true,italic:false},'minecraft:custom_data':{firearms_throwable:{schema:1,id:'hand_grenade'}}}}}
function firearms:throwable/launch
