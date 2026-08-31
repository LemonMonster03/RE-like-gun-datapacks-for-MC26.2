scoreboard players set @s fge.aimleft 0
execute if score @s fge.state matches 1 run scoreboard players operation @s fge.aimleft = @s fge.aimuntil
execute if score @s fge.state matches 1 run scoreboard players operation @s fge.aimleft -= #now fge.now
execute if score @s fge.aimleft matches ..0 run scoreboard players set @s fge.aimleft 0
scoreboard players set @s fge.lockleft 0
execute if score @s fge.state matches 8 run scoreboard players operation @s fge.lockleft = @s fge.lockend
execute if score @s fge.state matches 8 run scoreboard players operation @s fge.lockleft -= #now fge.now
execute if score @s fge.lockleft matches ..0 run scoreboard players set @s fge.lockleft 0
execute if entity @s[tag=fge.grenadier] if score @s fge.state matches 1 run scoreboard players operation @s fge.throwleft = @s fge.aimleft
execute if entity @s[tag=fge.grenadier] if score @s fge.state matches 9 run scoreboard players operation @s fge.throwleft = @s fge.throwready
execute if entity @s[tag=fge.grenadier] if score @s fge.state matches 9 run scoreboard players operation @s fge.throwleft -= #now fge.now
execute if score @s fge.throwleft matches ..0 run scoreboard players set @s fge.throwleft 0

tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'[敌对远程单位] ',color:'dark_red',bold:true},{text:'actor=',color:'gray'},{score:{name:'@s',objective:'fg.actor'},color:'white'},{text:'  状态=',color:'gray'},{score:{name:'@s',objective:'fge.state'},color:'white'},{text:'  目标=',color:'gray'},{score:{name:'@s',objective:'fge.target'},color:'white'}]
execute if entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'行为=预警投弹',color:'gold'},{text:'  预警/冷却剩余=',color:'gray'},{score:{name:'@s',objective:'fge.throwleft'},color:'white'},{text:'t  可投掷=',color:'gray'},{score:{name:'@s',objective:'fge.throwok'},color:'white'}]
execute if entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'距离≈',color:'gray'},{score:{name:'@s',objective:'fge.throwdist'},color:'white'},{text:'  高度差x100=',color:'gray'},{score:{name:'@s',objective:'fge.throwdy'},color:'white'},{text:'  范围=',color:'gray'},{score:{name:'@s',objective:'fge.minrange'},color:'white'},{text:'–'},{score:{name:'@s',objective:'fge.range'},color:'white'}]
execute if entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'引信=',color:'gray'},{score:{name:'@s',objective:'fge.throwfuse'},color:'white'},{text:'t  冷却=',color:'gray'},{score:{name:'@s',objective:'fge.throwcool'},color:'white'},{text:'t  初速x1000=',color:'gray'},{score:{name:'@s',objective:'fge.throwspeed'},color:'white'}]
execute unless entity @s[tag=fge.grenadier] if entity @s[tag=fge.telegraphed_sniper] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'行为=预警狙击',color:'light_purple'},{text:'  追踪剩余=',color:'gray'},{score:{name:'@s',objective:'fge.aimleft'},color:'white'},{text:'t  锁定剩余=',color:'gray'},{score:{name:'@s',objective:'fge.lockleft'},color:'white'},{text:'t  锁定长度=',color:'gray'},{score:{name:'@s',objective:'fge.lockrange'},color:'white'}]
execute unless entity @s[tag=fge.grenadier] unless entity @s[tag=fge.telegraphed_sniper] run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'行为=普通点射',color:'gray'}
execute if score @s fge.state matches 0 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：搜索目标',color:'gray'}
execute if score @s fge.state matches 1 if entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：持续追踪并准备投掷',color:'gold'}
execute if score @s fge.state matches 1 unless entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：追踪瞄准',color:'dark_red'}
execute if score @s fge.state matches 2 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：射击',color:'red'}
execute if score @s fge.state matches 3 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：射后停顿',color:'yellow'}
execute if score @s fge.state matches 4 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：换弹',color:'green'}
execute if score @s fge.state matches 5 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：目标记忆',color:'gray'}
execute if score @s fge.state matches 6 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：攻击范围外',color:'gray'}
execute if score @s fge.state matches 7 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：弹药耗尽',color:'dark_gray'}
execute if score @s fge.state matches 8 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：锁定冻结',color:'red',bold:true}
execute if score @s fge.state matches 9 run tellraw @a[tag=fge.debug_viewer,limit=1] {text:'阶段：投掷冷却',color:'yellow'}
execute unless entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'弹药 ',color:'gold'},{score:{name:'@s',objective:'fge.loaded'},color:'white'},{text:'/'},{score:{name:'@s',objective:'fge.mag'},color:'white'},{text:'  备弹 '},{score:{name:'@s',objective:'fge.reserve'},color:'white'},{text:'  点射序号 '},{score:{name:'@s',objective:'fge.bindex'},color:'white'}]
execute unless entity @s[tag=fge.grenadier] run tellraw @a[tag=fge.debug_viewer,limit=1] [{text:'伤害x10=',color:'gray'},{score:{name:'@s',objective:'fge.damage'},color:'white'},{text:'  间隔=',color:'gray'},{score:{name:'@s',objective:'fge.delay'},color:'white'},{text:'  散布mdeg=',color:'gray'},{score:{name:'@s',objective:'fge.spread'},color:'white'},{text:'  LOS=',color:'gray'},{score:{name:'@s',objective:'fge.los'},color:'white'}]
