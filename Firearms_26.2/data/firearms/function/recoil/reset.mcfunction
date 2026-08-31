scoreboard players set @s fg.rdebt 0
scoreboard players set @s fg.rburst 0
scoreboard players set @s fg.rlastshot -1000000
scoreboard players set @s fg.rlastserial 0
execute store result score @s fg.rlastpitch run data get entity @s Rotation[1] 1000
