scoreboard players operation @s fg.ignitetick = #now fg.now
scoreboard players add @s fg.ignitetick 20
tag @a remove fg.launch_owner
tag @a remove fg.burn_target
tag @s add fg.burn_target
execute as @a[distance=..256] if score @s fg.actor = @a[tag=fg.burn_target,limit=1] fg.igniteowner run tag @s add fg.launch_owner
execute if entity @a[tag=fg.launch_owner,limit=1] run damage @s 1 firearms:incendiary_burn by @a[tag=fg.launch_owner,limit=1] from @a[tag=fg.launch_owner,limit=1]
execute unless entity @a[tag=fg.launch_owner,limit=1] run damage @s 1 firearms:incendiary_burn
tag @a remove fg.launch_owner
tag @s remove fg.burn_target
