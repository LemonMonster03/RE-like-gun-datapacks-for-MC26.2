execute in minecraft:overworld as @e[type=minecraft:marker,tag=fg.wb_core] at @s run function firearms:workbench/admin/remove_core
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=fg.wb_core] at @s run function firearms:workbench/admin/remove_core
execute in minecraft:the_end as @e[type=minecraft:marker,tag=fg.wb_core] at @s run function firearms:workbench/admin/remove_core
tellraw @a {text:'所有已加载的改造台已清理，存放枪械已原样弹出。',color:'yellow'}
