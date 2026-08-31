# Configure storage firearms_enemies:api register, then execute this function as one living non-player entity.
execute if data entity @s Health unless entity @s[type=minecraft:player] run function firearms_enemies:api/register_apply
