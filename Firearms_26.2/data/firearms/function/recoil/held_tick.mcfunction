function firearms:recoil/sync_gun
function firearms:recoil/measure_manual
scoreboard players operation @s fg.delta = @s fg.now
scoreboard players operation @s fg.delta -= @s fg.rlastshot
execute if score @s fg.delta > @s fg.rreset run scoreboard players set @s fg.rburst 0
execute if score @s fg.rdebt matches 1.. if score @s fg.rrecover matches 1.. if score @s fg.delta > @s fg.rdelay run function firearms:recoil/recover_step
