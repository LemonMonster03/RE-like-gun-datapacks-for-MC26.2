scoreboard players set @s fge.state 3
scoreboard players operation @s fge.pauseend = #now fge.now
scoreboard players operation @s fge.pauseend += @s fge.bpause
execute if entity @s[tag=fge.telegraphed_sniper] run function firearms_enemies:movement/clear
execute if entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.lockend 0
execute if entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.lockleft 0
