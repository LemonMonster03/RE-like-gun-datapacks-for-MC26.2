execute if entity @e[tag=fg.prop_owner,limit=1] run function firearms:prop/oil_barrel/damage_owned
execute unless entity @e[tag=fg.prop_owner,limit=1] run function firearms:prop/oil_barrel/damage_unowned
