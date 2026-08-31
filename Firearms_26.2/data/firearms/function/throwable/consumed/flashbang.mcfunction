advancement revoke @s only firearms:input/consume_flashbang
data modify storage firearms:runtime throwable_launch set value {type:2,fuse_ticks:40,throw_speed_x1000:1100,item:{id:'minecraft:stick',count:1,components:{'minecraft:item_model':'minecraft:iron_ingot','minecraft:custom_name':{text:'闪光弹',color:'white',bold:true,italic:false},'minecraft:custom_data':{firearms_throwable:{schema:1,id:'flashbang'}}}}}
function firearms:throwable/launch
