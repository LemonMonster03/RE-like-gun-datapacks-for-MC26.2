execute if predicate firearms:is_sneaking unless data entity @s SelectedItem run function firearms:workbench/base/dismantle
execute unless predicate firearms:is_sneaking run title @s actionbar {text:'潜行并空手右键底座可拆除改造台。',color:'gray'}
execute if predicate firearms:is_sneaking if data entity @s SelectedItem run title @s actionbar {text:'拆台前请清空主手。',color:'yellow'}
