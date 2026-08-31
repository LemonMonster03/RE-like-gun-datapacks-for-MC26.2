# Same derived lore as player-held guns, applied to an item_display contents slot.
scoreboard players set @s fg.math 0
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run item modify entity @s contents firearms:lore/base/p9
execute if data storage firearms:runtime {held:{gun:{id:'p9'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run item modify entity @s contents firearms:lore/base/desert_eagle
execute if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run item modify entity @s contents firearms:lore/base/v9_smg
execute if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run item modify entity @s contents firearms:lore/base/r5_rifle
execute if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run item modify entity @s contents firearms:lore/base/m12_shotgun
execute if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run item modify entity @s contents firearms:lore/base/s7_sniper
execute if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'m6_magnum'}}} run item modify entity @s contents firearms:lore/base/m6_magnum
execute if data storage firearms:runtime {held:{gun:{id:'m6_magnum'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} run item modify entity @s contents firearms:lore/base/gl3_launcher
execute if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'rpg_launcher'}}} run item modify entity @s contents firearms:lore/base/rpg_launcher
execute if data storage firearms:runtime {held:{gun:{id:'rpg_launcher'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run item modify entity @s contents firearms:lore/base/debug_auto
execute if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run scoreboard players set @s fg.math 1
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run item modify entity @s contents firearms:lore/base/debug_shotgun
execute if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run scoreboard players set @s fg.math 1
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{barrel:0b}}} run item modify entity @s contents firearms:lore/barrel/unavailable
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{barrel:1b},mods:{barrel:{id:'stock'}}}} run item modify entity @s contents firearms:lore/barrel/stock
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{barrel:1b},mods:{barrel:{id:'precision'}}}} run item modify entity @s contents firearms:lore/barrel/precision
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{barrel:1b}}} unless data storage firearms:runtime {held:{mods:{barrel:{id:'stock'}}}} unless data storage firearms:runtime {held:{mods:{barrel:{id:'precision'}}}} run item modify entity @s contents firearms:lore/barrel/custom
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{magazine:0b}}} run item modify entity @s contents firearms:lore/magazine/unavailable
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{magazine:1b},mods:{magazine:{id:'stock'}}}} run item modify entity @s contents firearms:lore/magazine/stock
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{magazine:1b},mods:{magazine:{id:'extended'}}}} run item modify entity @s contents firearms:lore/magazine/extended
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{magazine:1b}}} unless data storage firearms:runtime {held:{mods:{magazine:{id:'stock'}}}} unless data storage firearms:runtime {held:{mods:{magazine:{id:'extended'}}}} run item modify entity @s contents firearms:lore/magazine/custom
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{action:0b}}} run item modify entity @s contents firearms:lore/action/unavailable
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{action:1b},mods:{action:{id:'stock'}}}} run item modify entity @s contents firearms:lore/action/stock
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{action:1b},mods:{action:{id:'light_trigger'}}}} run item modify entity @s contents firearms:lore/action/light_trigger
execute if score @s fg.math matches 1 if data storage firearms:runtime {held:{slots:{action:1b}}} unless data storage firearms:runtime {held:{mods:{action:{id:'stock'}}}} unless data storage firearms:runtime {held:{mods:{action:{id:'light_trigger'}}}} run item modify entity @s contents firearms:lore/action/custom
