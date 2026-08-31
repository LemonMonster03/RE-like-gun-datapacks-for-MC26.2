execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute unless score @s fg.serial = @s fg.aimserial run function firearms:aim/new_gun
execute unless score @s fg.aimenabled matches 1 run function firearms:aim/release
execute if score @s fg.reload matches 1.. run function firearms:aim/release
execute unless predicate firearms:is_sneaking run function firearms:aim/release
