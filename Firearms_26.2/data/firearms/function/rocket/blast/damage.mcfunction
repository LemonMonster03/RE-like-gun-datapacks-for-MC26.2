execute if entity @a[tag=fg.launch_owner,limit=1] run function firearms:rocket/blast/damage_owned
execute unless entity @a[tag=fg.launch_owner,limit=1] run function firearms:rocket/blast/damage_unowned
