# Weapons: 101 all, 102..109 individual.
execute if score @s fg.menu matches 101 run function firearms:give/all
execute if score @s fg.menu matches 102 run function firearms:give/p9
execute if score @s fg.menu matches 103 run function firearms:give/desert_eagle
execute if score @s fg.menu matches 104 run function firearms:give/v9_smg
execute if score @s fg.menu matches 105 run function firearms:give/r5_rifle
execute if score @s fg.menu matches 106 run function firearms:give/m12_shotgun
execute if score @s fg.menu matches 107 run function firearms:give/s7_sniper
execute if score @s fg.menu matches 108 run function firearms:give/m6_magnum
execute if score @s fg.menu matches 109 run function firearms:give/gl3_launcher

# Reward weapons are intentionally excluded from firearms:give/all.
execute if score @s fg.menu matches 601 run function firearms:give/rpg_launcher

# Conventional and launcher ammunition.
execute if score @s fg.menu matches 201 run function firearms:give/ammo/all
execute if score @s fg.menu matches 202 run function firearms:give/ammo/pistol
execute if score @s fg.menu matches 203 run function firearms:give/ammo/rifle
execute if score @s fg.menu matches 204 run function firearms:give/ammo/shotgun
execute if score @s fg.menu matches 205 run function firearms:give/ammo/sniper
execute if score @s fg.menu matches 206 run function firearms:give/ammo/magnum
execute if score @s fg.menu matches 211 run function firearms:give/ammo/grenades
execute if score @s fg.menu matches 212 run function firearms:give/ammo/grenade_he
execute if score @s fg.menu matches 213 run function firearms:give/ammo/grenade_incendiary
execute if score @s fg.menu matches 214 run function firearms:give/ammo/grenade_bioweapon

# Throwables, medical items, armor and attachments.
execute if score @s fg.menu matches 221 run function firearms:give/throwables
execute if score @s fg.menu matches 222 run function firearms:give/hand_grenade
execute if score @s fg.menu matches 223 run function firearms:give/flashbang
execute if score @s fg.menu matches 231 run function firearms:give/medical/all
execute if score @s fg.menu matches 232 run function firearms:give/medical/small_medkit
execute if score @s fg.menu matches 233 run function firearms:give/medical/medium_medkit
execute if score @s fg.menu matches 234 run function firearms:give/medical/large_medkit
execute if score @s fg.menu matches 235 run function firearms:give/medical/adrenaline
execute if score @s fg.menu matches 241 run function firearms:give/armor/ballistic_set
execute if score @s fg.menu matches 242 run function firearms:give/armor/ballistic_helmet
execute if score @s fg.menu matches 243 run function firearms:give/armor/ballistic_vest
execute if score @s fg.menu matches 244 run function firearms:give/armor/ballistic_book
execute if score @s fg.menu matches 251 run function firearms:give/attachment/all
execute if score @s fg.menu matches 252 run function firearms:give/attachment/precision_barrel
execute if score @s fg.menu matches 253 run function firearms:give/attachment/extended_magazine
execute if score @s fg.menu matches 254 run function firearms:give/attachment/light_trigger

# Facilities, confirmation pages and their confirmed actions.
execute if score @s fg.menu matches 301 run function firearms:workbench/spawn
execute if score @s fg.menu matches 302 run function firearms:give/prop/oil_barrel_placer
execute if score @s fg.menu matches 303 run function firearms:menu/chat/scene_commands
execute if score @s fg.menu matches 311 run dialog show @s firearms:menu/confirm/remove_workbench
execute if score @s fg.menu matches 312 run function firearms:workbench/remove_nearest
execute if score @s fg.menu matches 313 run dialog show @s firearms:menu/confirm/remove_oil_barrel
execute if score @s fg.menu matches 314 run function firearms:prop/oil_barrel/remove_nearest
execute if score @s fg.menu matches 315 run dialog show @s firearms:menu/confirm/clear_workbenches
execute if score @s fg.menu matches 316 run function firearms:workbench/clear_all
execute if score @s fg.menu matches 317 run dialog show @s firearms:menu/confirm/clear_oil_barrels
execute if score @s fg.menu matches 318 run function firearms:prop/oil_barrel/clear_all

# Debug tools and legacy direct modification functions.
execute if score @s fg.menu matches 401 run function firearms:debug/status
execute if score @s fg.menu matches 402 run function firearms:give/debug_auto
execute if score @s fg.menu matches 403 run function firearms:give/debug_shotgun
execute if score @s fg.menu matches 411 run function firearms:mod/barrel/precision
execute if score @s fg.menu matches 412 run function firearms:mod/barrel/stock
execute if score @s fg.menu matches 413 run function firearms:mod/magazine/extended
execute if score @s fg.menu matches 414 run function firearms:mod/magazine/stock
execute if score @s fg.menu matches 415 run function firearms:mod/action/light_trigger
execute if score @s fg.menu matches 416 run function firearms:mod/action/stock
execute if score @s fg.menu matches 421 run dialog show @s firearms:menu/confirm/clear_stun
execute if score @s fg.menu matches 422 run function firearms:throwable/stun/clear_all
execute if score @s fg.menu matches 431 run function firearms:menu/chat/weakpoint
execute if score @s fg.menu matches 432 run function firearms:menu/chat/hitscan
execute if score @s fg.menu matches 433 run function firearms:menu/chat/throwable_api
execute if score @s fg.menu matches 434 run function firearms:menu/chat/prop_api
execute if score @s fg.menu matches 441 run function firearms:menu/chat/dimensions

# Help pages can send editable command summaries to chat.
execute if score @s fg.menu matches 501 run function firearms:menu/chat/controls
execute if score @s fg.menu matches 502 run function firearms:menu/chat/equipment
execute if score @s fg.menu matches 503 run function firearms:menu/chat/scenes
execute if score @s fg.menu matches 504 run function firearms:menu/chat/apis

# Reopen the page that owns successful one-click actions. Confirmation/help pages handle their own navigation.
execute if score @s fg.menu matches 101..109 run function firearms:menu/return/weapons
execute if score @s fg.menu matches 201..206 run function firearms:menu/return/ammo
execute if score @s fg.menu matches 211..214 run function firearms:menu/return/grenade_ammo
execute if score @s fg.menu matches 221..223 run function firearms:menu/return/throwables
execute if score @s fg.menu matches 231..235 run function firearms:menu/return/medical
execute if score @s fg.menu matches 241..244 run function firearms:menu/return/armor
execute if score @s fg.menu matches 251..254 run function firearms:menu/return/attachments
execute if score @s fg.menu matches 301..303 run function firearms:menu/return/deployment
execute if score @s fg.menu matches 312 run dialog show @s firearms:menu/deployment
execute if score @s fg.menu matches 314 run dialog show @s firearms:menu/deployment
execute if score @s fg.menu matches 316 run dialog show @s firearms:menu/deployment
execute if score @s fg.menu matches 318 run dialog show @s firearms:menu/deployment
execute if score @s fg.menu matches 401..403 run function firearms:menu/return/debug
execute if score @s fg.menu matches 411..416 run function firearms:menu/return/mods
execute if score @s fg.menu matches 422 run dialog show @s firearms:menu/debug
execute if score @s fg.menu matches 431..434 run dialog show @s firearms:menu/api_help
execute if score @s fg.menu matches 441 run dialog show @s firearms:menu/debug
execute if score @s fg.menu matches 501..504 run dialog show @s firearms:menu/help
execute if score @s fg.menu matches 601 run function firearms:menu/return/rewards

scoreboard players set @s fg.menu 0
scoreboard players enable @s fg.menu
