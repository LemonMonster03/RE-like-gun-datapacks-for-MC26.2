# Upgrade shipped legacy guns to inventory ammunition without touching unknown extensions.
scoreboard players set @s fg.math 0
execute unless data storage firearms:runtime {held:{balance_version:2}} if data storage firearms:runtime {held:{gun:{id:'p9'}}} run function firearms:ammo/upgrade/p9
execute unless data storage firearms:runtime {held:{balance_version:2}} if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run function firearms:ammo/upgrade/desert_eagle
execute unless data storage firearms:runtime {held:{balance_version:2}} if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run function firearms:ammo/upgrade/debug_auto
execute unless data storage firearms:runtime {held:{balance_version:2}} if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run function firearms:ammo/upgrade/debug_shotgun
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'m6_magnum'}}} run scoreboard players set @s fg.math 1
execute unless data storage firearms:runtime held.ammo.type if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} run scoreboard players set @s fg.math 1
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'p9'}}} run data modify storage firearms:runtime held.ammo.type set value 'pistol'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run data modify storage firearms:runtime held.ammo.type set value 'pistol'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run data modify storage firearms:runtime held.ammo.type set value 'pistol'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run data modify storage firearms:runtime held.ammo.type set value 'shotgun'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run data modify storage firearms:runtime held.ammo.type set value 'pistol'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run data modify storage firearms:runtime held.ammo.type set value 'rifle'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run data modify storage firearms:runtime held.ammo.type set value 'shotgun'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run data modify storage firearms:runtime held.ammo.type set value 'sniper'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'m6_magnum'}}} run data modify storage firearms:runtime held.ammo.type set value 'magnum'
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} run data modify storage firearms:runtime held.ammo.type set value 'grenade_he'
execute if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} unless data storage firearms:runtime held.ammo.label run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_he'}}} unless data storage firearms:runtime held.ammo.label run data modify storage firearms:runtime held.ammo.label set value '高爆'
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} unless data storage firearms:runtime held.ammo.label run data modify storage firearms:runtime held.ammo.label set value '燃烧'
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} unless data storage firearms:runtime held.ammo.label run data modify storage firearms:runtime held.ammo.label set value '生物'
execute if data storage firearms:runtime held.ammo.type unless data storage firearms:runtime {held:{ammo:{reserve:0}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime held.ammo.type run data modify storage firearms:runtime held.ammo.reserve set value 0
execute if score @s fg.math matches 1 run function firearms:state/write_held
function firearms:content/prepare
