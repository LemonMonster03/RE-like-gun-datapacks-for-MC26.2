execute unless score @s fg.aimmove = @s fg.aimapplied run function firearms:aim/refresh_modifier
scoreboard players add @s fg.aimticks 1
execute if score @s fg.aimticks > @s fg.aimenter run scoreboard players operation @s fg.aimticks = @s fg.aimenter
scoreboard players set @s fg.aiming 0
execute if score @s fg.aimticks >= @s fg.aimenter run scoreboard players set @s fg.aiming 1
