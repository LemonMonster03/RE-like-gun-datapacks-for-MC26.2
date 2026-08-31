execute in minecraft:overworld as @e[type=minecraft:marker,tag=fg.oil_barrel_core] at @s run function firearms:prop/oil_barrel/remove_core
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=fg.oil_barrel_core] at @s run function firearms:prop/oil_barrel/remove_core
execute in minecraft:the_end as @e[type=minecraft:marker,tag=fg.oil_barrel_core] at @s run function firearms:prop/oil_barrel/remove_core
tellraw @a {text:'所有已加载的爆炸油桶已无害清理。',color:'yellow'}
