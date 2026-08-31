scoreboard players set @s fg.reserve 0
execute if data storage firearms:runtime {held:{ammo:{type:'pistol'}}} store result score @s fg.reserve run clear @s minecraft:iron_nugget[minecraft:custom_data~{firearms_ammo:{schema:1,type:'pistol'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'rifle'}}} store result score @s fg.reserve run clear @s minecraft:gold_nugget[minecraft:custom_data~{firearms_ammo:{schema:1,type:'rifle'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'shotgun'}}} store result score @s fg.reserve run clear @s minecraft:copper_ingot[minecraft:custom_data~{firearms_ammo:{schema:1,type:'shotgun'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'sniper'}}} store result score @s fg.reserve run clear @s minecraft:amethyst_shard[minecraft:custom_data~{firearms_ammo:{schema:1,type:'sniper'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'magnum'}}} store result score @s fg.reserve run clear @s minecraft:netherite_scrap[minecraft:custom_data~{firearms_ammo:{schema:1,type:'magnum'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_he'}}} store result score @s fg.reserve run clear @s minecraft:firework_star[minecraft:custom_data~{firearms_ammo:{schema:1,type:'grenade_he'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_incendiary'}}} store result score @s fg.reserve run clear @s minecraft:magma_cream[minecraft:custom_data~{firearms_ammo:{schema:1,type:'grenade_incendiary'}}] 0
execute if data storage firearms:runtime {held:{ammo:{type:'grenade_bioweapon'}}} store result score @s fg.reserve run clear @s minecraft:fermented_spider_eye[minecraft:custom_data~{firearms_ammo:{schema:1,type:'grenade_bioweapon'}}] 0
execute unless data storage firearms:runtime held.ammo.type store result score @s fg.reserve run data get storage firearms:runtime held.ammo.reserve 1
