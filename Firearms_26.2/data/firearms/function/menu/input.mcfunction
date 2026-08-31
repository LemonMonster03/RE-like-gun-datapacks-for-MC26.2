advancement revoke @s only firearms:input/using_menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms_menu:{schema:1,id:'terminal'}}] run item modify entity @s weapon.mainhand firearms:menu_terminal_silent
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms_menu:{schema:1,id:'terminal'}}] unless score @s fg.menuuse matches 1.. run function firearms:menu/open
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{firearms_menu:{schema:1,id:'terminal'}}] run scoreboard players set @s fg.menuuse 2
