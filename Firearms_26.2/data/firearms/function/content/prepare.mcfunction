# Shipped guns gain explicit workbench slot compatibility once. Unknown extensions are untouched.
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'p9'}}} run function firearms:content/upgrade/all_slots
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'desert_eagle'}}} run function firearms:content/upgrade/all_slots
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'v9_smg'}}} run function firearms:content/upgrade/no_action
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'r5_rifle'}}} run function firearms:content/upgrade/no_action
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'m12_shotgun'}}} run function firearms:content/upgrade/no_barrel
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run function firearms:content/upgrade/all_slots
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'m6_magnum'}}} run function firearms:content/upgrade/no_magazine
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'gl3_launcher'}}} run function firearms:content/upgrade/no_slots
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'debug_auto'}}} run function firearms:content/upgrade/no_action
execute unless data storage firearms:runtime {held:{content_version:3}} if data storage firearms:runtime {held:{gun:{id:'debug_shotgun'}}} run function firearms:content/upgrade/no_barrel
execute unless data storage firearms:runtime {held:{s7_revision:1}} if data storage firearms:runtime {held:{gun:{id:'s7_sniper'}}} run function firearms:content/upgrade/s7_range
