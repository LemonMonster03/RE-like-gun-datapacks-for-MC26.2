tag @e remove fg.hit_target
tag @e[type=!#firearms:ignored,tag=!fg.shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] add fg.hit_target
execute if entity @e[tag=fg.hit_target,limit=1] run function firearms:ray/hit_body
