execute if entity @a[tag=fg.throw_owner,limit=1] run function firearms:throwable/hand_grenade/damage_owned
execute unless entity @a[tag=fg.throw_owner,limit=1] run function firearms:throwable/hand_grenade/damage_unowned
