tag @e[tag=fg.wb_clicked] remove fg.wb_clicked
tag @s add fg.wb_clicked
execute on target run function firearms:workbench/click
data remove entity @s interaction
tag @s remove fg.wb_clicked
