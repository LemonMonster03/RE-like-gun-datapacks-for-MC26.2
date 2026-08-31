execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run tellraw @s {text:'主手没有 Firearms 枪械。',color:'red'}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1,slots:{barrel:0b}}}] run tellraw @s {text:'这把枪不支持枪管配件。',color:'red'}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{slots:{barrel:0b}}}] run function firearms:mod/barrel/precision_apply
