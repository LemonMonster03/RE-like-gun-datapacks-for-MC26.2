# Snapshot the last settled scope/steady state, then fire along the last using tick's rotation.
scoreboard players set @s fg.scopeready 0
execute if score @s fg.scenabled matches 1 if score @s fg.scopeticks >= @s fg.scenter run scoreboard players set @s fg.scopeready 1
scoreboard players set @s fg.aimoverride 1
function firearms:stats/calculate
function firearms:fire/try
scoreboard players set @s fg.aimoverride 0
function firearms:scope/cancel
