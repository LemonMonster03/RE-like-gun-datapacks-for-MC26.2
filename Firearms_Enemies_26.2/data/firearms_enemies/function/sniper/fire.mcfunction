# Restore the captured center before the common fire function adds its configured 0.25-degree spread.
scoreboard players operation @s fge.yaw = @s fge.lockyaw
scoreboard players operation @s fge.pitch = @s fge.lockpitch
function firearms_enemies:rotation/apply
scoreboard players set @s fge.state 2
function firearms_enemies:combat/fire
