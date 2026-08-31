# Sample a unit disk, then scale it by spread_mdeg. Expected attempts: 1.27.
tag @s remove fg.sample_ok
scoreboard players set @s fg.tries 0
function firearms:shot/sample
scoreboard players operation @s fg.yaw = @s fg.rx
scoreboard players operation @s fg.yaw *= @s fg.spread
scoreboard players operation @s fg.yaw /= #unit fg.const
scoreboard players operation @s fg.pitch = @s fg.ry
scoreboard players operation @s fg.pitch *= @s fg.spread
scoreboard players operation @s fg.pitch /= #unit fg.const
tag @s remove fg.sample_ok
