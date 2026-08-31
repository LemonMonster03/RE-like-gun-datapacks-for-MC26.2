execute unless entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.state 2
execute unless entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.bindex 0
execute unless entity @s[tag=fge.telegraphed_sniper] run scoreboard players set @s fge.yawoff 0
execute unless entity @s[tag=fge.telegraphed_sniper] run scoreboard players operation @s fge.nextfire = #now fge.now
execute if entity @s[tag=fge.telegraphed_sniper] if score @s fge.target matches 1.. run function firearms_enemies:combat/start_aim_initial
execute if entity @s[tag=fge.telegraphed_sniper] unless score @s fge.target matches 1.. run scoreboard players set @s fge.state 0
