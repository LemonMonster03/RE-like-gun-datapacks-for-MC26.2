advancement revoke @s only firearms:input/using
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms:{schema:1}}] run function firearms:input/held
