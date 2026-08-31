execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run tellraw @s {text:'主手没有 Firearms 枪械。',color:'red'}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run function firearms:debug/status_held
