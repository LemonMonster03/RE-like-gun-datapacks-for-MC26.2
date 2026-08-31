execute if entity @a[tag=fg.launch_owner,limit=1] run function firearms:launcher/incendiary/damage_owned
execute unless entity @a[tag=fg.launch_owner,limit=1] run function firearms:launcher/incendiary/damage_unowned
function firearms:launcher/incendiary/apply
