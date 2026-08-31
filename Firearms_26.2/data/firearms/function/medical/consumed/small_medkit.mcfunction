advancement revoke @s only firearms:input/consume_small_medkit
execute store result score @s fg.health run data get entity @s Health 10
execute store result score @s fg.maxhealth run attribute @s minecraft:max_health get 10
execute if score @s fg.health >= @s fg.maxhealth run function firearms:medical/refund/small_medkit
execute if score @s fg.health < @s fg.maxhealth run effect give @s minecraft:instant_health 1 0 true
