$tag @a[gamemode=survival,tag=!fge.target_immune,distance=..$(acquire)] add fge.candidate
$tag @a[gamemode=adventure,tag=!fge.target_immune,distance=..$(acquire)] add fge.candidate
$tag @e[type=!minecraft:player,tag=fge.player_ally,tag=!fge.target_immune,distance=..$(acquire)] add fge.candidate
execute as @e[tag=fge.candidate] if predicate firearms_enemies:is_invisible unless entity @s[distance=..8] run tag @s remove fge.candidate
