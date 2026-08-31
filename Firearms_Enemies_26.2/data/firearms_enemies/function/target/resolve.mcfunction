tag @e remove fge.current_target
scoreboard players operation #target_actor fge.tmp = @s fge.target
execute as @a[gamemode=survival,tag=!fge.target_immune] if score @s fg.actor = #target_actor fge.tmp run tag @s add fge.current_target
execute as @a[gamemode=adventure,tag=!fge.target_immune] if score @s fg.actor = #target_actor fge.tmp run tag @s add fge.current_target
execute as @e[type=!minecraft:player,tag=fge.player_ally,tag=!fge.target_immune] if score @s fg.actor = #target_actor fge.tmp run tag @s add fge.current_target
