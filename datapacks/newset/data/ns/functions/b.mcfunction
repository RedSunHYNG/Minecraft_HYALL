execute if entity @a[tag=!nsplayer] run function #load
scoreboard players set @a[nbt=!{SelectedItem:{tag:{Tags:["nsplayer_key"]}}}] nsplayer_use 0

tellraw @a[nbt={SelectedItem:{tag:{Tags:["nsplayer_key"]}}},scores={nsplayer_use=1..}] [{"text":"开启关闭辅助","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger nsplayer_use1 add 1"}},{"text":"切换自身模式","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger nsplayer_use2 add 1"}},{"text":"开启关闭死亡掉落","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger nsplayer_use3 add 1"}},{"text":"开启关闭怪物破坏","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger nsplayer_use4 add 1"}},{"text":"开启关闭不死","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger nsplayer_use5 add 1"}}]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["nsplayer_key"]}}},scores={nsplayer_use=1..}] nsplayer_use 0
#开启关闭辅助
scoreboard players enable @a[tag=!nsoff] nsplayer_use1
execute as @a[scores={nsplayer_use1=1}] at @s run effect give @s minecraft:night_vision 30 0
execute as @a[scores={nsplayer_use1=1}] at @s run effect give @s minecraft:saturation 10 0
execute as @a[scores={nsplayer_use1=1}] at @s run effect give @s minecraft:regeneration 10 0
scoreboard players set @a[scores={nsplayer_use1=2..}] nsplayer_use1 0
#调节模式
scoreboard players enable @a[tag=!nsoff] nsplayer_use2
execute as @a[scores={nsplayer_use2=0},gamemode=!survival] at @s run gamemode survival
execute as @a[scores={nsplayer_use2=1},gamemode=!creative] at @s run gamemode creative
execute as @a[scores={nsplayer_use2=2},gamemode=!spectator] at @s run gamemode spectator
scoreboard players set @a[scores={nsplayer_use2=3..}] nsplayer_use2 0
#掉落
scoreboard players enable @a[tag=!nsoff] nsplayer_use3
execute as @a[scores={nsplayer_use3=0}] at @s run tag @a[tag=!nsmode1] add nsmode1
execute as @a[scores={nsplayer_use3=1}] at @s run tag @a[tag=nsmode1] remove nsmode1
scoreboard players set @a[scores={nsplayer_use3=2..}] nsplayer_use3 0
execute if entity @a[tag=nsmode1] run gamerule keepInventory true
execute unless entity @a[tag=nsmode1] run gamerule keepInventory false
#怪物破坏
scoreboard players enable @a[tag=!nsoff] nsplayer_use4
execute as @a[scores={nsplayer_use4=0}] at @s run tag @a[tag=!nsmode2] add nsmode2
execute as @a[scores={nsplayer_use4=1}] at @s run tag @a[tag=nsmode2] remove nsmode2
scoreboard players set @a[scores={nsplayer_use4=2..}] nsplayer_use4 0
execute if entity @a[tag=nsmode2] run gamerule mobGriefing true
execute unless entity @a[tag=nsmode2] run gamerule mobGriefing false
#不死
scoreboard players enable @a[tag=!nsoff] nsplayer_use5
execute as @a[scores={nsplayer_use5=1}] at @s run effect give @s minecraft:resistance 10 4
scoreboard players set @a[scores={nsplayer_use5=2..}] nsplayer_use1 0