# Run as the entity that must receive damage.
function firearms:state/assign_actor
tag @s add fg.damage_receiver
