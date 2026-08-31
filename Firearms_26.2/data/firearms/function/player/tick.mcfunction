# A game-time gap means the player disconnected or the pack did not tick.
scoreboard players operation @s fg.now = #now fg.now
execute if score @s fg.menuuse matches 1.. run scoreboard players remove @s fg.menuuse 1
scoreboard players operation @s fg.delta = @s fg.now
scoreboard players operation @s fg.delta -= @s fg.lasttick
execute if score @s fg.delta matches 2.. run function firearms:recoil/reset
execute if score @s fg.delta matches 2.. run function firearms:aim/reset
execute if score @s fg.delta matches 2.. run function firearms:scope/cancel
execute if score @s fg.reload matches 1.. if score @s fg.delta matches 2.. run function firearms:reload/cancel
execute unless score @s fg.deaths = @s fg.deathseen run function firearms:recoil/reset
execute unless score @s fg.deaths = @s fg.deathseen run function firearms:aim/reset
execute unless score @s fg.deaths = @s fg.deathseen run function firearms:scope/cancel
execute if score @s fg.reload matches 1.. unless score @s fg.deaths = @s fg.deathseen run function firearms:reload/cancel
scoreboard players operation @s fg.lasttick = @s fg.now
scoreboard players operation @s fg.deathseen = @s fg.deaths

# F swaps the previous main-hand gun into offhand. Restore both hands losslessly.
execute if score @s fg.had matches 1 if items entity @s weapon.offhand *[minecraft:custom_data~{firearms:{schema:1}}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run function firearms:reload/f_swap

tag @s remove fg.gun
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run tag @s add fg.gun
execute if entity @s[tag=fg.gun] run function firearms:state/load_held
execute if entity @s[tag=fg.gun] if data storage firearms:runtime {held:{serial:0}} run function firearms:state/assign_serial
execute if entity @s[tag=fg.gun] run function firearms:ammo/prepare
execute if entity @s[tag=fg.gun] if score @s fg.reload matches 1.. run function firearms:reload/tick
execute if entity @s[tag=fg.gun] run function firearms:state/load_held
execute if entity @s[tag=fg.gun] run function firearms:stats/calculate
execute if entity @s[tag=fg.gun] run function firearms:ammo/count
execute if entity @s[tag=fg.gun] run function firearms:scope/tick
execute if entity @s[tag=fg.gun] run function firearms:aim/update
execute if entity @s[tag=fg.gun] run function firearms:recoil/held_tick
execute if entity @s[tag=fg.gun] if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run function firearms:sniper/bolt_tick
execute if entity @s[tag=fg.gun] run function firearms:ui/actionbar

execute unless entity @s[tag=fg.gun] if score @s fg.reload matches 1.. run function firearms:reload/cancel
execute unless entity @s[tag=fg.gun] if score @s fg.rlastserial matches 1.. run function firearms:recoil/reset
execute unless entity @s[tag=fg.gun] if score @s fg.aimserial matches 1.. run function firearms:aim/reset
execute unless entity @s[tag=fg.gun] if score @s fg.scopen matches 1 run function firearms:scope/cancel
execute unless entity @s[tag=fg.gun] if score @s fg.had matches 1 run title @s actionbar {text:''}
scoreboard players set @s fg.had 0
execute if entity @s[tag=fg.gun] run scoreboard players set @s fg.had 1
