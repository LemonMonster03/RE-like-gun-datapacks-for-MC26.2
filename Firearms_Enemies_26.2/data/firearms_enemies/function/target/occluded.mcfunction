execute unless score @s fge.state matches 5 run function firearms_enemies:target/begin_memory
execute if score @s fge.state matches 5 if score #now fge.now >= @s fge.memoryend run function firearms_enemies:target/release_silent
