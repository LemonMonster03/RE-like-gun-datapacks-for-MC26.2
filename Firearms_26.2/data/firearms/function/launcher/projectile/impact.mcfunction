scoreboard players set @s fg.ghit 1
execute if score @s fg.gtype matches 1 run function firearms:launcher/he/impact
execute if score @s fg.gtype matches 2 run function firearms:launcher/incendiary/impact
execute if score @s fg.gtype matches 3 if score @s fg.gdirect matches 1 run function firearms:launcher/bioweapon/hit
execute if score @s fg.gtype matches 3 unless score @s fg.gdirect matches 1 run function firearms:launcher/bioweapon/miss
execute if score @s fg.gtype matches 4 run function firearms:rocket/impact
kill @s
