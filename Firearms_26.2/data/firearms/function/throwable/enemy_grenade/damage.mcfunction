execute if entity @e[tag=fg.throw_owner_entity,limit=1] run function firearms:throwable/enemy_grenade/damage_owned
execute unless entity @e[tag=fg.throw_owner_entity,limit=1] run function firearms:throwable/enemy_grenade/damage_unowned
