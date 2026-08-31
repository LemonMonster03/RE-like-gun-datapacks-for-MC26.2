scoreboard players set @s fg.phit 1
function firearms:prop/oil_barrel/spawn
playsound minecraft:block.wood.place block @a[distance=..24] ~ ~ ~ 0.8 0.8
tellraw @s {text:'爆炸油桶已放置。',color:'green'}
