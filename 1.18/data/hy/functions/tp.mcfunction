scoreboard players enable @a[tag=!tp_ban] tp_table
#传送等待超时
scoreboard players add @a[scores={tp_table=1..}] tp_time2 1
scoreboard players set @a[scores={tp_table=1..,tp_time2=60..}] tp_table 0
scoreboard players set @a[scores={tp_table=0}] tp_time2 0
#发言触发时间
scoreboard players add @a[tag=!no_tp,x_rotation=-90] tp_time 1
tellraw @a[tag=!no_tp,scores={tp_time=60..},x_rotation=-90] [{"text":"开启锚点传送","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 1"}},{"text":"--分割线--","color":"red"},{"text":"说明书","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 2"}},{"text":"--分割线--","color":"red"},{"text":"传送至最后一个玩家死亡点","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/trigger tp_table set 4"}}]
tag @a[tag=!no_tp,scores={tp_time=60..},x_rotation=-90] add no_tp
#发言中断
scoreboard players set @a[x_rotation=-89..90] tp_time 0
tag @a[tag=no_tp,x_rotation=-89..90] remove no_tp




#1
tp @a[scores={tp_table=1}] @r[x_rotation=90]
scoreboard players set @a[scores={tp_table=1}] tp_table 0

#2
execute if entity @a[scores={tp_table=2}] run say 点击开启锚点传送后你有60ticks的时间来让对方接受传送。低头至最下面进入接受传送的队列。注；传送最后一个玩家死亡点是所有玩家死亡点共用的/p\n 且由于区块加载问题，可能发生传送无效的情况。
scoreboard players set @a[scores={tp_table=2}] tp_table 0

#3
execute as @a[scores={tp_table=3}] at @s run spawnpoint @s ~ ~1 ~
scoreboard players set @a[scores={tp_table=3}] tp_table 0

#4
execute if entity @a[scores={tp_dead=1..}] at @a[scores={tp_dead=1..}] run kill @e[type=minecraft:armor_stand,tag=tp_dead,distance=1..]
execute if entity @a[scores={tp_dead=1..}] at @a[scores={tp_dead=1..}] run summon armor_stand ~ ~1 ~ {Tags:[tp_dead],Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b}
scoreboard players set @a[scores={tp_dead=1..}] tp_dead 0
tp @a[scores={tp_table=4}] @e[limit=1,tag=tp_dead,sort=random]
scoreboard players set @a[scores={tp_table=4}] tp_table 0