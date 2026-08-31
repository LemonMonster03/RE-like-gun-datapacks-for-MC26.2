# Run as a living target. The demo creates one chest-level critical weakpoint.
function firearms:weakpoint/register_receiver
function firearms:weakpoint/remove_owned
tag @e remove fg.wp_new
execute at @s anchored eyes positioned ^ ^-0.55 ^ run summon minecraft:marker ~ ~ ~ {Tags:['fg.weakpoint','fg.follow_receiver','fg.wp_new']}
scoreboard players operation @e[type=minecraft:marker,tag=fg.wp_new,limit=1] fg.actor = @s fg.actor
scoreboard players set @e[type=minecraft:marker,tag=fg.wp_new,limit=1] fg.wpbonus 2500
scoreboard players set @e[type=minecraft:marker,tag=fg.wp_new,limit=1] fg.wpmult 500
tag @e remove fg.wp_new
