# The using_item advancement runs every tick while the native spyglass is held up.
execute store result score @s fg.serial run data get storage firearms:runtime held.serial 1
execute unless score @s fg.serial = @s fg.scopeserial run function firearms:scope/new_gun
scoreboard players set @s fg.scopen 1
scoreboard players operation @s fg.scopelast = @s fg.now
scoreboard players add @s fg.scopeticks 1
execute if score @s fg.scopeticks matches 1201.. run scoreboard players set @s fg.scopeticks 1200
execute store result score @s fg.scopeyaw run data get entity @s Rotation[0] 1000
execute store result score @s fg.scopepitch run data get entity @s Rotation[1] 1000

# Steadying advances only on actual native-scope use ticks. This also snapshots it across the two-tick release window.
scoreboard players set @s fg.scopeready 0
execute if score @s fg.scenabled matches 1 if score @s fg.scopeticks >= @s fg.scenter run scoreboard players set @s fg.scopeready 1
scoreboard players set @s fg.aimon 0
execute if score @s fg.scopeready matches 1 if score @s fg.aimenabled matches 1 if score @s fg.reload matches 0 if predicate firearms:is_sneaking run scoreboard players set @s fg.aimon 1
execute if score @s fg.aimon matches 1 run function firearms:aim/held
execute if score @s fg.aimon matches 0 run function firearms:aim/release
