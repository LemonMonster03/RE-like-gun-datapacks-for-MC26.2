# Firearms Enemies for Java 26.2 / data pack format 107.1.
scoreboard objectives add fge.damage dummy
scoreboard objectives add fge.delay dummy
scoreboard objectives add fge.mag dummy
scoreboard objectives add fge.maxres dummy
scoreboard objectives add fge.reloadt dummy
scoreboard objectives add fge.range dummy
scoreboard objectives add fge.minrange dummy
scoreboard objectives add fge.spread dummy
scoreboard objectives add fge.pellets dummy
scoreboard objectives add fge.bshots dummy
scoreboard objectives add fge.bpause dummy
scoreboard objectives add fge.bgrowth dummy
scoreboard objectives add fge.rpitch dummy
scoreboard objectives add fge.ryaw dummy
scoreboard objectives add fge.acquire dummy
scoreboard objectives add fge.react dummy
scoreboard objectives add fge.reacquire dummy
scoreboard objectives add fge.track dummy
scoreboard objectives add fge.lockt dummy
scoreboard objectives add fge.memory dummy
scoreboard objectives add fge.movfire dummy
scoreboard objectives add fge.movreload dummy
scoreboard objectives add fge.loaded dummy
scoreboard objectives add fge.reserve dummy
scoreboard objectives add fge.state dummy
scoreboard objectives add fge.target dummy
scoreboard objectives add fge.aimuntil dummy
scoreboard objectives add fge.nextfire dummy
scoreboard objectives add fge.pauseend dummy
scoreboard objectives add fge.reloadend dummy
scoreboard objectives add fge.memoryend dummy
scoreboard objectives add fge.bindex dummy
scoreboard objectives add fge.tracknext dummy
scoreboard objectives add fge.lockend dummy
scoreboard objectives add fge.aimleft dummy
scoreboard objectives add fge.lockleft dummy
scoreboard objectives add fge.lockyaw dummy
scoreboard objectives add fge.lockpitch dummy
scoreboard objectives add fge.lockrange dummy
scoreboard objectives add fge.lasersteps dummy
scoreboard objectives add fge.lasermax dummy
scoreboard objectives add fge.scanphase dummy
scoreboard objectives add fge.wasstun dummy
scoreboard objectives add fge.movestate dummy
scoreboard objectives add fge.inrange dummy
scoreboard objectives add fge.los dummy
scoreboard objectives add fge.lossteps dummy
scoreboard objectives add fge.losmax dummy
scoreboard objectives add fge.found dummy
scoreboard objectives add fge.count dummy
scoreboard objectives add fge.shotspread dummy
scoreboard objectives add fge.yawoff dummy
scoreboard objectives add fge.pitchoff dummy
scoreboard objectives add fge.yaw dummy
scoreboard objectives add fge.pitch dummy
scoreboard objectives add fge.rand dummy
scoreboard objectives add fge.transfer dummy
scoreboard objectives add fge.moveamt dummy
scoreboard objectives add fge.throwfuse dummy
scoreboard objectives add fge.throwcool dummy
scoreboard objectives add fge.throwspeed dummy
scoreboard objectives add fge.throwminy dummy
scoreboard objectives add fge.throwmaxy dummy
scoreboard objectives add fge.throwready dummy
scoreboard objectives add fge.throwleft dummy
scoreboard objectives add fge.throwok dummy
scoreboard objectives add fge.throwdy dummy
scoreboard objectives add fge.throwdist dummy
scoreboard objectives add fge.randx dummy
scoreboard objectives add fge.randz dummy
scoreboard objectives add fge.randmag dummy
scoreboard objectives add fge.throwtries dummy
scoreboard objectives add fge.throwband dummy
scoreboard objectives add fge.throwx dummy
scoreboard objectives add fge.throwz dummy
scoreboard objectives add fge.tmp dummy
scoreboard objectives add fge.const dummy
scoreboard objectives add fge.now dummy
scoreboard objectives add fge.menu trigger

scoreboard players set #five fge.const 5
scoreboard players set #four fge.const 4
scoreboard players set #two fge.const 2
scoreboard players set #ten fge.const 10
scoreboard players set #hundred fge.const 100
scoreboard players set #unit fge.const 10000
scoreboard players set #thousand fge.const 1000
execute store result score #now fge.now run time query gametime

kill @e[type=minecraft:marker,tag=fge.aim_point]
kill @e[type=minecraft:marker,tag=fge.los_eye]
kill @e[type=minecraft:marker,tag=fge.rotation_tmp]
kill @e[type=minecraft:marker,tag=fge.throw_point]
tag @e remove fge.candidate
tag @e remove fge.probe
tag @e remove fge.current_target
tag @e remove fge.aim_current
tag @e remove fge.throw_current
execute as @e[tag=fge.shooter] run function firearms_enemies:movement/clear
execute as @e[tag=fge.grenadier] run item replace entity @s weapon.mainhand with air
scoreboard players set @e[tag=fge.shooter] fge.state 0
execute as @e[tag=fge.grenadier] if score @s fge.throwready > #now fge.now run scoreboard players set @s fge.state 9
scoreboard players set @e[tag=fge.shooter] fge.target 0
scoreboard players set @e[tag=fge.shooter] fge.wasstun 0
scoreboard players set @e[tag=fge.shooter] fge.lockend 0
scoreboard players set @e[tag=fge.shooter] fge.lockleft 0
scoreboard players set @e[tag=fge.shooter] fge.throwleft 0
scoreboard players set @e[tag=fge.shooter] fge.throwok 0

tellraw @a {text:'Firearms Enemies 26.2 已加载。可生成感染枪手、感染狙击手或感染投弹手。',color:'dark_red'}
