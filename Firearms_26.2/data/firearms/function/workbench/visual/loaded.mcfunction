function firearms:workbench/state/load
execute as @e[type=minecraft:item_display,tag=fg.wb_carrier,tag=fg.wb_focus,limit=1] run function firearms:lore/refresh_contents
function firearms:workbench/visual/barrel
function firearms:workbench/visual/magazine
function firearms:workbench/visual/action
