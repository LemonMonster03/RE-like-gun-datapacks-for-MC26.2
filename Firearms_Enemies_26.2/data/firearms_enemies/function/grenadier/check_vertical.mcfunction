scoreboard players set @s fge.throwok 0
scoreboard players set @s fge.throwdy 0
scoreboard players operation @s fge.throwdist = @s fge.lossteps
scoreboard players operation @s fge.throwdist /= #two fge.const
execute store result score #throw_target_y fge.tmp run data get entity @e[tag=fge.current_target,limit=1] Pos[1] 100
execute store result score @s fge.throwdy run data get entity @s Pos[1] 100
scoreboard players operation #throw_target_y fge.tmp -= @s fge.throwdy
scoreboard players operation @s fge.throwdy = #throw_target_y fge.tmp
scoreboard players operation #throw_min_y fge.tmp = @s fge.throwminy
scoreboard players operation #throw_min_y fge.tmp *= #hundred fge.const
scoreboard players operation #throw_max_y fge.tmp = @s fge.throwmaxy
scoreboard players operation #throw_max_y fge.tmp *= #hundred fge.const
execute if score @s fge.throwdy >= #throw_min_y fge.tmp if score @s fge.throwdy <= #throw_max_y fge.tmp run scoreboard players set @s fge.throwok 1
execute if score @s fge.throwok matches 0 run scoreboard players set @s fge.inrange 0
