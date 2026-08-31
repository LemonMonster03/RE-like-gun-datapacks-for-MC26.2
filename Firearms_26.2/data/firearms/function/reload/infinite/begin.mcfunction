# Infinite-ammo launchers use the normal serial/slot guarded timer without inventory checks.
function firearms:reload/begin
execute at @s run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.7 0.65
