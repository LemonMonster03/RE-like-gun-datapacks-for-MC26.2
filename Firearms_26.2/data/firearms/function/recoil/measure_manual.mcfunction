# Positive Minecraft pitch moves the view downward and repays outstanding vertical recoil.
execute store result score @s fg.rcurrent run data get entity @s Rotation[1] 1000
scoreboard players operation @s fg.rmanual = @s fg.rcurrent
scoreboard players operation @s fg.rmanual -= @s fg.rlastpitch
execute if score @s fg.rmanual matches 1.. if score @s fg.rdebt matches 1.. run scoreboard players operation @s fg.rdebt -= @s fg.rmanual
execute if score @s fg.rdebt matches ..-1 run scoreboard players set @s fg.rdebt 0
scoreboard players operation @s fg.rlastpitch = @s fg.rcurrent
