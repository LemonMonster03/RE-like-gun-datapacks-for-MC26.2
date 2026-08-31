particle minecraft:item{item:{id:'minecraft:slime_ball',count:1}} ~ ~ ~ 0.35 0.35 0.35 0.08 24 normal @a[distance=..96]
playsound minecraft:entity.slime.squish master @a[distance=..64] ~ ~ ~ 1.2 0.55
execute as @a[distance=..128] if score @s fg.actor = @e[type=minecraft:item,tag=fg.launch_origin,limit=1] fg.actor run tag @s add fg.launch_owner
execute as @e[tag=fg.launch_direct_target,limit=1] at @s if entity @a[tag=fg.launch_owner,limit=1] run damage @s 32 firearms:bioweapon_grenade by @e[type=minecraft:item,tag=fg.launch_origin,limit=1] from @a[tag=fg.launch_owner,limit=1]
execute as @e[tag=fg.launch_direct_target,limit=1] at @s unless entity @a[tag=fg.launch_owner,limit=1] run damage @s 32 firearms:bioweapon_grenade by @e[type=minecraft:item,tag=fg.launch_origin,limit=1]
function #firearms:bioweapon_grenade_hit
