scoreboard players add @s fg.deaths 0
scoreboard players set @s fg.had 0
scoreboard players set @s fg.menuuse 0
scoreboard players set @s fg.reload 0
scoreboard players set @s fg.rphase 0
scoreboard players set @s fg.rinserted 0
scoreboard players set @s fg.rskip 0
scoreboard players set @s fg.lastuse -1000000
scoreboard players set @s fg.rdebt 0
scoreboard players set @s fg.rburst 0
scoreboard players set @s fg.rlastshot -1000000
scoreboard players set @s fg.rlastserial 0
scoreboard players set @s fg.aimticks 0
scoreboard players set @s fg.aiming 0
scoreboard players set @s fg.aimserial 0
scoreboard players set @s fg.aimmod 0
scoreboard players set @s fg.aimapplied -1
scoreboard players set @s fg.scopen 0
scoreboard players set @s fg.scopeticks 0
scoreboard players set @s fg.scopeserial 0
scoreboard players set @s fg.scopelast -1000000
scoreboard players set @s fg.scopedelta 0
scoreboard players set @s fg.scopeyaw 0
scoreboard players set @s fg.scopepitch 0
scoreboard players set @s fg.scopeready 0
scoreboard players set @s fg.aimoverride 0
scoreboard players set @s fg.bolt 0
scoreboard players set @s fg.lastzone 0
scoreboard players set @s fg.lastroll 10001
scoreboard players set @s fg.lastchance 0
scoreboard players set @s fg.lastcrit 0
attribute @s minecraft:movement_speed modifier remove firearms:aim_slow
execute store result score @s fg.rlastpitch run data get entity @s Rotation[1] 1000
scoreboard players operation @s fg.lasttick = #now fg.now
scoreboard players operation @s fg.deathseen = @s fg.deaths
tag @s add fg.init
