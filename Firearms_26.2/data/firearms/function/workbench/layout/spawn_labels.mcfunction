# @s is the station core, positioned and rotated to the station front.
summon minecraft:text_display ^-0.82 ^2.18 ^-0.76 {Tags:['fg.workbench','fg.wb_label','fg.wb_label_new'],billboard:'center',view_range:1.0f,shadow:1b,background:0,line_width:100,text:{text:'枪管',color:'aqua',bold:true}}
scoreboard players operation @e[type=minecraft:text_display,tag=fg.wb_label_new,limit=1,sort=nearest] fg.wbid = @s fg.wbid
tag @e[type=minecraft:text_display,tag=fg.wb_label_new] remove fg.wb_label_new
summon minecraft:text_display ^0.0 ^2.18 ^-0.76 {Tags:['fg.workbench','fg.wb_label','fg.wb_label_new'],billboard:'center',view_range:1.0f,shadow:1b,background:0,line_width:100,text:{text:'弹匣',color:'aqua',bold:true}}
scoreboard players operation @e[type=minecraft:text_display,tag=fg.wb_label_new,limit=1,sort=nearest] fg.wbid = @s fg.wbid
tag @e[type=minecraft:text_display,tag=fg.wb_label_new] remove fg.wb_label_new
summon minecraft:text_display ^0.82 ^2.18 ^-0.76 {Tags:['fg.workbench','fg.wb_label','fg.wb_label_new'],billboard:'center',view_range:1.0f,shadow:1b,background:0,line_width:100,text:{text:'机件',color:'aqua',bold:true}}
scoreboard players operation @e[type=minecraft:text_display,tag=fg.wb_label_new,limit=1,sort=nearest] fg.wbid = @s fg.wbid
tag @e[type=minecraft:text_display,tag=fg.wb_label_new] remove fg.wb_label_new

summon minecraft:text_display ^0.0 ^1.43 ^-0.76 {Tags:['fg.workbench','fg.wb_label','fg.wb_label_new'],billboard:'center',view_range:1.0f,shadow:1b,background:0,line_width:160,text:{text:'枪械位 · 右键存取',color:'gold',bold:true}}
scoreboard players operation @e[type=minecraft:text_display,tag=fg.wb_label_new,limit=1,sort=nearest] fg.wbid = @s fg.wbid
tag @e[type=minecraft:text_display,tag=fg.wb_label_new] remove fg.wb_label_new
summon minecraft:text_display ^0.0 ^2.55 ^-0.76 {Tags:['fg.workbench','fg.wb_label','fg.wb_label_new'],billboard:'center',view_range:1.0f,shadow:1b,background:0,line_width:260,text:{text:'右键槽位：主手配件安装 · 空手拆除',color:'white'}}
scoreboard players operation @e[type=minecraft:text_display,tag=fg.wb_label_new,limit=1,sort=nearest] fg.wbid = @s fg.wbid
tag @e[type=minecraft:text_display,tag=fg.wb_label_new] remove fg.wb_label_new
