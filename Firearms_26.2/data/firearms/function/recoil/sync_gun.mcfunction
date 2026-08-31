execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute unless score @s fg.serial = @s fg.rlastserial run function firearms:recoil/new_gun
