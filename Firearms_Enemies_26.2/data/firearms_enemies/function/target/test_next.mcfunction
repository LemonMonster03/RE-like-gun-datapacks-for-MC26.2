tag @e remove fge.probe
tag @e[tag=fge.candidate,sort=nearest,limit=1] add fge.probe
tag @e[tag=fge.probe,limit=1] remove fge.candidate
tag @e[tag=fge.probe,limit=1] add fge.vision_target
function firearms_enemies:vision/start
execute if score @s fge.los matches 1 run function firearms_enemies:target/lock
tag @e[tag=fge.probe] remove fge.vision_target
scoreboard players add @s fge.count 1
execute if score @s fge.found matches 0 if score @s fge.count matches ..7 if entity @e[tag=fge.candidate] run function firearms_enemies:target/test_next
