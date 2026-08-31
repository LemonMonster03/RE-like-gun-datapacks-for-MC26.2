item replace entity @s weapon.mainhand with minecraft:fire_charge[minecraft:custom_name={text:'强化高爆手雷',color:'gold',italic:false},minecraft:custom_data={firearms_enemy_explosive:{schema:1,id:'enemy_grenade'}}] 1
data modify entity @s HandDropChances[0] set value 0.0f
scoreboard players set @s fge.throwleft 40
execute at @s run playsound minecraft:entity.tnt.primed hostile @a[distance=..48] ~ ~ ~ 0.55 1.35
function #firearms_enemies:grenade_prime_start
