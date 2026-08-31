# Stop in water; otherwise descend by 0.25 until air above a solid floor is found.
execute if block ~ ~ ~ minecraft:water run scoreboard players set @s fg.gsteps 33
execute if block ~ ~ ~ minecraft:lava run scoreboard players set @s fg.gsteps 33
execute if block ~ ~ ~ minecraft:bubble_column run scoreboard players set @s fg.gsteps 33
execute if score @s fg.gsteps matches ..32 if block ~ ~ ~ #firearms:launcher_passable unless block ~ ~-0.25 ~ #firearms:launcher_passable run function firearms:launcher/incendiary/pool_create
execute if score @s fg.gsteps matches ..31 if block ~ ~ ~ #firearms:launcher_passable if block ~ ~-0.25 ~ #firearms:launcher_passable run scoreboard players add @s fg.gsteps 1
execute if score @s fg.gsteps matches ..32 if block ~ ~ ~ #firearms:launcher_passable if block ~ ~-0.25 ~ #firearms:launcher_passable positioned ~ ~-0.25 ~ run function firearms:launcher/incendiary/ground_probe
