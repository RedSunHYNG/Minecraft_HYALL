#触发；
execute as @e[type=minecraft:bat,tag=hy_zdy_bj] at @s unless entity @a[distance=..6] run kill @s
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2..4}] at @s unless entity @e[distance=..6,tag=hy_zdy_bj] run summon minecraft:bat ^ ^ ^2 {PersistenceRequired:1,Silent:1,NoAI:1,Tags:["hy_zdy_bj"]}
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2..4}] at @s positioned ^ ^ ^2 run tp @e[distance=..6,tag=hy_zdy_bj,limit=1] ~ ~1 ~
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2}] at @s unless entity @e[distance=..6,tag=hy_zdy_bj] run summon minecraft:bat ^ ^ ^2 {PersistenceRequired:1,Silent:1,NoAI:1,Tags:["hy_zdy_bj"]}
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2}] at @s positioned ^ ^ ^2 run tp @e[distance=..6,tag=hy_zdy_bj,limit=1] ~ ~1 ~
effect give @e[tag=hy_zdy_bj] minecraft:invisibility 30 0 true
#启用触发
scoreboard players enable @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}}] hy_zdy_smode
scoreboard players enable @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}}] hy_zdy_smb
#计时；
scoreboard players add @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_r2=1..}] hy_zdy_ts 1
scoreboard players add @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_r1=1..}] hy_zdy_ts 1
scoreboard players add @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_qmode=1..}] hy_zdy_ts 1
scoreboard players add @a[nbt=!{SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_timeq=..10}] hy_zdy_timeq 1
scoreboard players set @a[scores={hy_zdy_ts=100..}] hy_zdy_r2 0
scoreboard players set @a[scores={hy_zdy_ts=100..}] hy_zdy_r1 0
scoreboard players set @a[scores={hy_zdy_ts=100..}] hy_zdy_qmode 0
scoreboard players set @a[scores={hy_zdy_ts=100..}] hy_zdy_ts 0
scoreboard players set @a[nbt=!{SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_ts=1..}] hy_zdy_ts 0
#清除
scoreboard players set @a[nbt=!{SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_r2=1..}] hy_zdy_r2 0
scoreboard players set @a[nbt=!{SelectedItem:{tag:{Tags:["hy_zdy"]}}},scores={hy_zdy_r1=1..}] hy_zdy_r1 0
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["hy_zdy"]}}}] hy_zdy_timeq 0
#转化
scoreboard players set @a[scores={hy_zdy_zd=4..}] hy_zdy_zd 1
#Q
execute at @a[scores={hy_zdy_q1=1..,hy_zdy_timeq=..10}] run kill @e[type=item,distance=..3,nbt={Item:{tag:{Tags:["mode1"]},id:"minecraft:crossbow"}}]
execute as @a[scores={hy_zdy_q1=1..}] run scoreboard players set @s hy_zdy_qmode 1
execute as @a[scores={hy_zdy_q1=1..}] run replaceitem entity @s weapon.mainhand minecraft:crossbow{Tags:["hy_zdy","mode1"],display:{Name:'[{"text":"诛仙始祖神弩","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
scoreboard players set @a[scores={hy_zdy_q1=1..}] hy_zdy_q1 0
execute at @a[scores={hy_zdy_q2=1..,hy_zdy_timeq=..10}] run kill @e[type=item,distance=..3,nbt={Item:{tag:{Tags:["mode2"]},id:"minecraft:diamond_pickaxe"}}]
execute as @a[scores={hy_zdy_q2=1..}] run scoreboard players set @s hy_zdy_qmode 1
execute as @a[scores={hy_zdy_q2=1..}] run replaceitem entity @s weapon.mainhand minecraft:diamond_pickaxe{Tags:["hy_zdy","mode2"],display:{Name:'[{"text":"噬万神之神镐","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
scoreboard players set @a[scores={hy_zdy_q2=1..}] hy_zdy_q2 0
#F
scoreboard players add @a[nbt={Inventory:[{tag:{Tags:["hy_zdy"]},Slot:-106b}]}] hy_zdy_zd 1
replaceitem entity @a[nbt={Inventory:[{tag:{Tags:["mode1"]},Slot:-106b}]}] weapon.mainhand minecraft:crossbow{Tags:["hy_zdy","mode1"],display:{Name:'[{"text":"诛仙始祖神弩","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
replaceitem entity @a[nbt={Inventory:[{tag:{Tags:["mode2"]},Slot:-106b}]}] weapon.mainhand minecraft:diamond_pickaxe{Tags:["hy_zdy","mode2"],display:{Name:'[{"text":"噬万神之神镐","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
replaceitem entity @a[nbt={Inventory:[{tag:{Tags:["hy_zdy"]},Slot:-106b}]}] weapon.offhand minecraft:air