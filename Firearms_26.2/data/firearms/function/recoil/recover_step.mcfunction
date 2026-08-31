scoreboard players operation @s fg.rstep = @s fg.rrecover
execute if score @s fg.rstep > @s fg.rdebt run scoreboard players operation @s fg.rstep = @s fg.rdebt
scoreboard players operation @s fg.rcurrent = @s fg.rlastpitch
scoreboard players operation @s fg.pitch = @s fg.rcurrent
scoreboard players operation @s fg.pitch += @s fg.rstep
execute if score @s fg.pitch matches 90001.. run scoreboard players set @s fg.pitch 90000
scoreboard players operation @s fg.ractual = @s fg.pitch
scoreboard players operation @s fg.ractual -= @s fg.rcurrent
execute store result score @s fg.yaw run data get entity @s Rotation[0] 1000
execute if score @s fg.ractual matches 1.. run function firearms:recoil/rotate
execute if score @s fg.ractual matches 1.. run scoreboard players operation @s fg.rdebt -= @s fg.ractual
execute if score @s fg.rdebt matches ..-1 run scoreboard players set @s fg.rdebt 0
scoreboard players operation @s fg.rlastpitch = @s fg.pitch
