#(商人特殊个体,赦免名)：sr_tst
#商人召唤需要等级与等级系统绑定
function sr:srmode
function sr:srtype

#商人巡回广播面板
scoreboard players enable @a sr_steam

#广播
scoreboard players add @a sr_time 1
tellraw @a[scores={sr_time=1}] [{"text":"点击本句话中商人名字来生成商人：","color":"gold"},{"text":"钱桩商人","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger sr_steam set 1"}},{"text":"基础商人","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger sr_steam set 2"}},{"text":"幸运商人","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger sr_steam set 3"}}]
tellraw @a[scores={sr_time=2}] [{"text":"模组补偿商人","color":"gold"},{"text":"狙击枪军火商","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger sr_steam set 4"}}]
scoreboard players set @a[scores={sr_time=10000..}] sr_time 0

#商人清理
scoreboard players add @e[tag=sr_steam,type=minecraft:villager] sr_time 1
kill @e[tag=sr_steam,type=minecraft:villager,scores={sr_time=1000..}]

#"sr_steam","sr_tst","sr_name1","sr_name2","sr_name3"
#Name 钱币/钱锭 money
#商人生成
execute as @a[scores={sr_steam=1}] at @s run summon minecraft:villager ~ ~1 ~ {CustomName:'[{"text":"钱庄商人","color":"gold"}]',Tags:["sr_steam","sr_tst","sr_name1"],CustomNameVisible:1b,Glowing:1b,NoAI:1b,Invulnerable:1b,NoGravity:1b,Offers:{Recipes:[{maxUses:99,uses:0,buy:{id:"minecraft:stone",Count:24b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}}},{maxUses:99,uses:0,buy:{id:"minecraft:rotten_flesh",Count:8b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}}},{maxUses:99,uses:0,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}}},{maxUses:99,uses:0,buy:{id:"minecraft:diamond",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}}},{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:32b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:brick",Count:1b,tag:{display:{Name:'[{"text":"钱锭"}]'},Tags:["money"]}}},{maxUses:99,uses:0,buy:{id:"minecraft:brick",Count:1b,tag:{display:{Name:'[{"text":"钱锭"}]'},Tags:["money"]}},sell:{id:"minecraft:paper",Count:32b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}}}]}}
execute as @a[scores={sr_steam=2}] at @s run summon minecraft:villager ~ ~1 ~ {CustomName:'[{"text":"初级商人","color":"gold"}]',Tags:["sr_steam","sr_tst","sr_name2"],CustomNameVisible:1b,Glowing:1b,NoAI:1b,Invulnerable:1b,NoGravity:1b,Offers:{Recipes:[{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:experience_bottle",Count:1b}},{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:2b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:iron_ingot",Count:1b}},{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:4b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:white_bed",Count:1b}},{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:5b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:soul_campfire",Count:1b}},{maxUses:99,uses:0,buy:{id:"minecraft:paper",Count:6b,tag:{display:{Name:'[{"text":"钱币"}]'},Tags:["money"]}},sell:{id:"minecraft:diamond",Count:1b}}]}}

#随机商人
execute as @a[scores={sr_steam=3,level=..24}] at @s run tellraw @s [{"text":"等级不够","color":"gold"}]
execute as @a[scores={sr_steam=3,level=25..}] at @s run function sr:summon_sr
#模组补偿
execute as @a[scores={sr_steam=4}] at @s run function sr:mods
scoreboard players set @a sr_steam 0
