scoreboard players set @s fg.crit 0
scoreboard players set @s fg.critroll 10001
scoreboard players operation @s fg.hitchance = @s fg.critchance
scoreboard players operation @s fg.hitchance += @s fg.hitbonus
scoreboard players operation @s fg.hitmult = @s fg.critmult
scoreboard players operation @s fg.hitmult += @s fg.hitmultadd
execute if score @s fg.hitchance matches ..-1 run scoreboard players set @s fg.hitchance 0
execute if score @s fg.hitchance matches 10001.. run scoreboard players set @s fg.hitchance 10000
execute if score @s fg.hitmult matches ..999 run scoreboard players set @s fg.hitmult 1000
execute if score @s fg.hitmult matches 10001.. run scoreboard players set @s fg.hitmult 10000
execute if score @s fg.hitchance matches 1.. store result score @s fg.critroll run random value 1..10000
execute if score @s fg.critroll <= @s fg.hitchance run scoreboard players set @s fg.crit 1
execute if score @s fg.crit matches 1 run scoreboard players operation @s fg.shotdamage *= @s fg.hitmult
execute if score @s fg.crit matches 1 run scoreboard players operation @s fg.shotdamage /= #thousand fg.const
execute if score @s fg.shotdamage matches ..0 run scoreboard players set @s fg.shotdamage 1
execute if score @s fg.shotdamage matches 10001.. run scoreboard players set @s fg.shotdamage 10000
scoreboard players operation @s fg.lastchance = @s fg.hitchance
scoreboard players operation @s fg.lastroll = @s fg.critroll
scoreboard players operation @s fg.lastcrit = @s fg.crit
