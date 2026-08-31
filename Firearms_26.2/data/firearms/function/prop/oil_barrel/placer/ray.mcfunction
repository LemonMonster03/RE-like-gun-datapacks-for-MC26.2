execute if score @s fg.phit matches 0 unless block ~ ~ ~ #firearms:bullet_passable align xyz positioned ~0.5 ~1 ~0.5 run function firearms:prop/oil_barrel/placer/try_place
execute if score @s fg.phit matches 0 if block ~ ~ ~ #firearms:bullet_passable run scoreboard players add @s fg.psteps 1
execute if score @s fg.phit matches 0 if score @s fg.psteps matches ..31 if block ~ ~ ~ #firearms:bullet_passable positioned ^ ^ ^0.25 run function firearms:prop/oil_barrel/placer/ray
