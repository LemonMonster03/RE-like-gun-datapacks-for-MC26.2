function #firearms:pre_fire
scoreboard players remove @s fg.loaded 1
scoreboard players operation @s fg.next = @s fg.now
scoreboard players operation @s fg.next += @s fg.delay
execute store result storage firearms:runtime held.ammo.loaded int 1 run scoreboard players get @s fg.loaded
execute store result storage firearms:runtime held.state.next_fire_tick int 1 run scoreboard players get @s fg.next
function firearms:state/write_held

scoreboard players set @s fg.lastzone 0
scoreboard players set @s fg.lastroll 10001
scoreboard players set @s fg.lastchance 0
scoreboard players set @s fg.lastcrit 0

tag @a remove fg.shooter
tag @s add fg.shooter
execute at @s anchored eyes positioned ^0.18 ^-0.12 ^0.55 run particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.002 1 force @a[distance=..64]
execute if data storage firearms:runtime {held:{gun:{id:"p9"}}} at @s run playsound minecraft:entity.firework_rocket.blast player @a[distance=..64] ~ ~ ~ 0.65 1.65
execute if data storage firearms:runtime {held:{gun:{id:"desert_eagle"}}} at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..80] ~ ~ ~ 0.85 1.25
execute if data storage firearms:runtime {held:{gun:{id:"debug_auto"}}} at @s run playsound minecraft:entity.firework_rocket.blast player @a[distance=..64] ~ ~ ~ 0.55 1.8
execute if data storage firearms:runtime {held:{gun:{id:"debug_shotgun"}}} at @s run playsound minecraft:entity.generic.explode player @a[distance=..80] ~ ~ ~ 0.55 1.5
execute if data storage firearms:runtime {held:{gun:{id:"v9_smg"}}} at @s run playsound minecraft:entity.firework_rocket.blast player @a[distance=..64] ~ ~ ~ 0.55 1.8
execute if data storage firearms:runtime {held:{gun:{id:"r5_rifle"}}} at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..80] ~ ~ ~ 0.7 1.45
execute if data storage firearms:runtime {held:{gun:{id:"m12_shotgun"}}} at @s run playsound minecraft:entity.generic.explode player @a[distance=..80] ~ ~ ~ 0.55 1.5
execute if data storage firearms:runtime {held:{gun:{id:"s7_sniper"}}} at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..112] ~ ~ ~ 1.0 0.85
execute if data storage firearms:runtime {held:{gun:{id:"m6_magnum"}}} at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..96] ~ ~ ~ 1.0 0.70
execute if data storage firearms:runtime {held:{gun:{id:"gl3_launcher"}}} at @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..96] ~ ~ ~ 1.0 0.65
execute if data storage firearms:runtime {held:{gun:{id:"rpg_launcher"}}} at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..128] ~ ~ ~ 1.2 0.55
execute unless data storage firearms:runtime {held:{gun:{id:"p9"}}} unless data storage firearms:runtime {held:{gun:{id:"desert_eagle"}}} unless data storage firearms:runtime {held:{gun:{id:"debug_auto"}}} unless data storage firearms:runtime {held:{gun:{id:"debug_shotgun"}}} unless data storage firearms:runtime {held:{gun:{id:"v9_smg"}}} unless data storage firearms:runtime {held:{gun:{id:"r5_rifle"}}} unless data storage firearms:runtime {held:{gun:{id:"m12_shotgun"}}} unless data storage firearms:runtime {held:{gun:{id:"s7_sniper"}}} unless data storage firearms:runtime {held:{gun:{id:"m6_magnum"}}} unless data storage firearms:runtime {held:{gun:{id:"gl3_launcher"}}} unless data storage firearms:runtime {held:{gun:{id:"rpg_launcher"}}} at @s run playsound minecraft:entity.firework_rocket.blast player @a[distance=..64] ~ ~ ~ 0.6 1.6
execute if data storage firearms:runtime {held:{gun:{projectile_mode:'grenade_launcher'}}} run function firearms:launcher/fire
execute if data storage firearms:runtime {held:{gun:{projectile_mode:'rocket'}}} run function firearms:rocket/fire
execute unless data storage firearms:runtime {held:{gun:{projectile_mode:'grenade_launcher'}}} unless data storage firearms:runtime {held:{gun:{projectile_mode:'rocket'}}} run function firearms:shot/start
function firearms:recoil/apply
function #firearms:post_fire
tag @s remove fg.shooter
