execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run tellraw @s {text:'主手没有 Firearms 枪械。',color:'red'}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1,slots:{action:0b}}}] run tellraw @s {text:'这把枪不支持机件配件。',color:'red'}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{slots:{action:0b}}}] run function firearms:mod/action/light_trigger_apply
