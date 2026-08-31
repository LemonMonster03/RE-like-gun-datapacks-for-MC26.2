execute store result score @s fge.randx run random value -75..75
execute store result score @s fge.randz run random value -75..75
scoreboard players operation @s fge.randmag = @s fge.randx
scoreboard players operation @s fge.randmag *= @s fge.randx
scoreboard players operation #throw_rand_z fge.tmp = @s fge.randz
scoreboard players operation #throw_rand_z fge.tmp *= @s fge.randz
scoreboard players operation @s fge.randmag += #throw_rand_z fge.tmp
scoreboard players add @s fge.throwtries 1
execute if score @s fge.randmag matches 5626.. if score @s fge.throwtries matches ..7 run function firearms_enemies:grenadier/random_offset
execute if score @s fge.randmag matches 5626.. if score @s fge.throwtries matches 8.. run scoreboard players set @s fge.randx 0
execute if score @s fge.randmag matches 5626.. if score @s fge.throwtries matches 8.. run scoreboard players set @s fge.randz 0
