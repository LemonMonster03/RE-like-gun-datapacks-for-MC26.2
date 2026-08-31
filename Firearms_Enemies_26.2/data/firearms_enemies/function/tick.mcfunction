execute store result score #now fge.now run time query gametime
scoreboard players enable @a fge.menu
execute as @a[scores={fge.menu=1..}] at @s run function firearms_enemies:menu/dispatch
scoreboard players operation #phase fge.tmp = #now fge.now
scoreboard players operation #phase fge.tmp %= #five fge.const
scoreboard players operation #laserphase fge.tmp = #now fge.now
scoreboard players operation #laserphase fge.tmp %= #two fge.const
scoreboard players operation #throwphase fge.tmp = #now fge.now
scoreboard players operation #throwphase fge.tmp %= #four fge.const
execute in minecraft:overworld run function firearms_enemies:dimension/tick
execute in minecraft:the_nether run function firearms_enemies:dimension/tick
execute in minecraft:the_end run function firearms_enemies:dimension/tick
