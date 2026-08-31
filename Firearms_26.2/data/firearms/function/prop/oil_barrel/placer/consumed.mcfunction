advancement revoke @s only firearms:input/consume_oil_barrel_placer
scoreboard players set @s fg.phit 0
scoreboard players set @s fg.psteps 0
execute anchored eyes positioned ^ ^ ^0.25 run function firearms:prop/oil_barrel/placer/ray
execute if score @s fg.phit matches 0 run function firearms:prop/oil_barrel/placer/refund
execute if score @s fg.phit matches 0 run tellraw @s {text:'放置失败：8 格内没有顶部空间充足的目标方块。',color:'red'}
