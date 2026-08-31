# The item's own next_fire_tick is the cooldown source, so switching guns is safe.
execute unless score @s fg.reload matches 1.. if score @s fg.now >= @s fg.next if score @s fg.loaded matches ..0 run function firearms:fire/dry
execute unless score @s fg.reload matches 1.. if score @s fg.now >= @s fg.next if score @s fg.loaded matches 1.. run function firearms:fire/live
