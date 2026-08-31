function firearms:scope/cancel
scoreboard players operation @s fg.scopeserial = @s fg.serial
scoreboard players operation @s fg.aimserial = @s fg.serial
scoreboard players set @s fg.scopen 1
scoreboard players set @s fg.scopeticks 0
