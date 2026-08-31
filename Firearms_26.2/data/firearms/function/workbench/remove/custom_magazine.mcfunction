data modify storage firearms:runtime attachment_token set value {schema:1,id:'custom',slot:'magazine'}
data modify storage firearms:runtime attachment_token.payload set from storage firearms:runtime held.mods.magazine
item replace entity @s weapon.mainhand with minecraft:paper[minecraft:max_stack_size=1,minecraft:custom_name={text:'自定义弹匣配件令牌',color:'aqua',italic:false},minecraft:lore=[{text:'保留第三方配件的完整数据',color:'gray',italic:false}],minecraft:custom_data={firearms_attachment:{schema:1,id:'custom',slot:'magazine'}}] 1
item modify entity @s weapon.mainhand firearms:attachment_token
