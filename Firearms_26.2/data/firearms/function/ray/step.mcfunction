# A solid block wins before the entity test, preventing hits through walls.
execute unless block ~ ~ ~ #firearms:bullet_passable run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
execute unless block ~ ~ ~ #firearms:bullet_passable run scoreboard players set @s fg.hit 1
execute if score @s fg.hit matches 0 if score @s fg.steps >= @s fg.tracestart if score @s fg.trace matches 0 if score @s fg.tracemode matches 0 unless entity @s[tag=fg.api_shooter] unless data storage firearms:runtime {held:{visual:{tracer:0b}}} run particle minecraft:dust{color:[0.72f,0.76f,0.80f],scale:0.35f} ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
execute if score @s fg.hit matches 0 if score @s fg.steps >= @s fg.tracestart if score @s fg.trace matches 0 if score @s fg.tracemode matches 1 unless entity @s[tag=fg.api_shooter] unless data storage firearms:runtime {held:{visual:{tracer:0b}}} run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..96]
execute if score @s fg.hit matches 0 if score @s fg.steps >= @s fg.tracestart if score @s fg.trace matches 0 if score @s fg.tracemode matches 0 if entity @s[tag=fg.api_shooter,tag=!fg.api_no_tracer] run particle minecraft:dust{color:[0.72f,0.76f,0.80f],scale:0.35f} ~ ~ ~ 0 0 0 0 1 normal @a[distance=..96]
execute if score @s fg.hit matches 0 if score @s fg.steps >= @s fg.tracestart if score @s fg.trace matches 0 if score @s fg.tracemode matches 1 if entity @s[tag=fg.api_shooter,tag=!fg.api_no_tracer] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..96]
# Scene props stop the ray before weakpoints and ordinary living targets.
execute if score @s fg.hit matches 0 unless entity @s[tag=fg.api_no_props] if entity @e[type=minecraft:interaction,tag=fg.oil_barrel_hitbox,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function firearms:prop/oil_barrel/hit
# Special weakpoints take precedence over the owner's ordinary collision box.
execute if score @s fg.hit matches 0 unless entity @s[tag=fg.api_shooter] if entity @e[type=minecraft:marker,tag=fg.weakpoint,distance=..0.4,limit=1,sort=nearest] run function firearms:weakpoint/try_hit
execute if score @s fg.hit matches 0 if entity @s[tag=fg.api_shooter,tag=fg.api_weakpoints] if entity @e[type=minecraft:marker,tag=fg.weakpoint,distance=..0.4,limit=1,sort=nearest] run function firearms:weakpoint/try_hit
execute if score @s fg.hit matches 0 if entity @e[type=!#firearms:ignored,tag=!fg.shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function firearms:ray/lock_body
execute if score @s fg.hit matches 0 if score @s fg.steps >= @s fg.tracestart run scoreboard players add @s fg.trace 1
execute if score @s fg.hit matches 0 if score @s fg.trace >= @s fg.tracegap run scoreboard players set @s fg.trace 0
execute if score @s fg.hit matches 0 run scoreboard players add @s fg.steps 1
execute if score @s fg.hit matches 0 if score @s fg.steps < @s fg.maxsteps positioned ^ ^ ^0.25 run function firearms:ray/step
