# 装置保护
execute at @e[tag=monster_time,type=minecraft:armor_stand] run tp @a[distance=..15,tag=!hy] @e[limit=1,sort=random,distance=100..]
execute unless block -2 250 0 minecraft:daylight_detector[inverted=true] run setblock -2 250 0 minecraft:daylight_detector[inverted=true]
execute unless block -2 250 1 minecraft:daylight_detector[inverted=false] run setblock -2 250 1 minecraft:daylight_detector[inverted=false]
#顺序执行
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time] run summon minecraft:armor_stand 1 250 0 {Tags:["tst","monster_time"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time] monster_time 1
execute if entity @e[tag=monster_time,scores={monster_time=10}] run setblock 0 250 0 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_1","main"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_2","main"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_3","main"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_4","main"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_5","main"]}}]}
execute if entity @e[tag=monster_time,scores={monster_time=15}] run setblock 0 250 3 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_1","main"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_2","main"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_3","main"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_4","main"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_5","main"]}},{Slot:5b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_6","main"]}},{Slot:6b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_7","main"]}},{Slot:7b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_8","main"]}},{Slot:8b,id:"minecraft:paper",Count:1b,tag:{Tags:["type_9","main"]}}]}
execute if entity @e[tag=monster_time,scores={monster_time=20}] run setblock 0 249 0 minecraft:redstone_block
execute if entity @e[tag=monster_time,scores={monster_time=25}] run setblock 0 249 3 minecraft:redstone_block
execute if entity @e[tag=monster_time,scores={monster_time=30}] run fill 0 249 0 0 250 0 minecraft:air
execute if entity @e[tag=monster_time,scores={monster_time=35}] run fill 0 249 3 0 250 3 minecraft:air
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_1"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 1
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_2"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 2
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_3"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 3
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_4"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 4
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["time_5"]}}}] run scoreboard players add @e[tag=monster_rtime] monster_time 5
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_1"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 1
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_2"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 2
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_3"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 3
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_4"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 4
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_5"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 5
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_6"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 6
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_7"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 7
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_8"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 8
execute if entity @e[tag=monster_time,scores={monster_time=40}] if entity @e[nbt={Item:{tag:{Tags:["type_9"]}}}] run scoreboard players set @e[tag=monster_time1] monster_type 9
execute positioned 0 250 0 if entity @e[tag=monster_time,scores={monster_time=50}] run kill @e[distance=..15,type=item,nbt={Item:{id:"minecraft:paper"}},nbt={Item:{tag:{Tags:["main"]}}}] 
scoreboard players set @e[tag=monster_time,scores={monster_time=60..}] monster_time 0
#主目录技能
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time1] run summon minecraft:armor_stand 1 250 1 {Tags:["tst","monster_time1"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time1] monster_time 1
execute if entity @e[tag=monster_time1,scores={monster_time=19}] run function monster:interval_run
scoreboard players set @e[tag=monster_time1,scores={monster_time=20..}] monster_time 0
#随机三阶段技能
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time2] run summon minecraft:armor_stand 1 250 2 {Tags:["tst","monster_time2","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time2,scores={monster_time=10..}] run function monster:time_a
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time3] run summon minecraft:armor_stand 1 250 3 {Tags:["tst","monster_time3","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time3,scores={monster_time=300..}] run function monster:time_b
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time4] run summon minecraft:armor_stand 1 250 4 {Tags:["tst","monster_time4","monster_rtime"]}
execute if entity @e[type=minecraft:armor_stand,tag=monster_time4,scores={monster_time=900..}] run function monster:time_c
#boss能力:复活次数
execute unless entity @e[type=minecraft:armor_stand,tag=monster_boss] run summon minecraft:armor_stand 1 250 5 {Tags:["tst","monster_boss"]}

tag @e[tag=!myt,nbt={CustomName:'{"text":"免疫体"}'}] add myt
scoreboard players add @e[tag=grt,tag=!byt,tag=!tst] monster_time 1
tag @e[tag=grt,tag=!tst,scores={monster_time=20..}] add byt
tag @e[tag=byt,tag=!tst,tag=grt] remove grt
#
execute if entity @e[type=minecraft:armor_stand,tag=qysj_day] run function monster:night_run
function monster:circulate_run
scoreboard players add @e[tag=minboss] monster_timekill 1
tp @e[tag=minboss,scores={monster_timekill=12000..}] ~ -128 ~
#电脑弱鸡和限制难度和长期生存可选
#scoreboard players add @e[tag=byt] monster_timekill 1
#kill @e[tag=byt,scores={monster_timekil=12000..}]

#随机不自动跳白天-夜晚检测机制
execute unless entity @e[type=minecraft:armor_stand,tag=monster_time5] run summon minecraft:armor_stand 2 250 0 {Tags:["tst","monster_time5"]}
execute if block -2 250 0 minecraft:daylight_detector[inverted=true,power=6] unless entity @e[tag=qysj_day,type=minecraft:armor_stand] run summon minecraft:armor_stand -3 250 0 {Tags:["qysj_day","true","first"]}
execute if block -2 250 1 minecraft:daylight_detector[inverted=false,power=8] if entity @e[tag=qysj_day,type=minecraft:armor_stand] run kill @e[tag=qysj_day,type=minecraft:armor_stand]
execute if block -2 250 1 minecraft:daylight_detector[inverted=false,power=11] if entity @e[tag=qysj_day,type=minecraft:armor_stand] run kill @e[tag=qysj_day,type=minecraft:armor_stand]
execute if entity @e[tag=qysj_day,tag=first,type=minecraft:armor_stand] run scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time5] monster_time 1
tag @e[tag=qysj_day,tag=first,type=minecraft:armor_stand] remove first
scoreboard players add @e[type=minecraft:armor_stand,tag=monster_time5,scores={monster_time=1..}] monster_time 1
execute if entity @e[tag=monster_time5,scores={monster_time=2}] run setblock 0 250 1 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["day_1","nightday"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["night_1","nightday"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["night_1","nightday"]}}]}
execute if entity @e[tag=monster_time5,scores={monster_time=12}] run setblock 0 249 1 minecraft:redstone_block
execute if entity @e[tag=monster_time5,scores={monster_time=17}] run fill 0 249 1 0 250 1 minecraft:air
execute if entity @e[tag=monster_time5,scores={monster_time=18}] unless entity @e[nbt={Item:{tag:{Tags:["night_1"]}}}] run tag @e[tag=qysj_day,tag=true] remove true
execute if entity @e[tag=monster_time5,scores={monster_time=19}] positioned 0 250 1 run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:paper"}},nbt={Item:{tag:{Tags:["nightday"]}}}]
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run gamerule doDaylightCycle false
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run time set midnight
execute if entity @e[tag=monster_time5,scores={monster_time=20}] if entity @e[type=minecraft:armor_stand,tag=qysj_day,tag=true] run tellraw @a [{"text":"永夜来临!【在床上跳一下破解夜晚不流动】","color":"gold"}]
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time5,scores={monster_time=21..}] monster_time 0

execute if entity @e[tag=qysj_day,tag=true,type=armor_stand] run execute as @a at @s if block ~ ~ ~ #minecraft:beds run scoreboard players set @s time_strike 1
scoreboard players add @a[scores={time_strike=1..}] time_strike 1
execute at @a[scores={time_strike=2}] run fill ~5 ~-2 ~5 ~-5 ~2 ~-5 air replace #minecraft:beds
execute at @a[scores={time_strike=3}] run say 恒定夜晚被破除！
execute at @a[scores={time_strike=4}] run kill @e[type=item,distance=..3]
execute at @a[scores={time_strike=5}] run gamerule doDaylightCycle true
execute at @a[scores={time_strike=6}] run tag @e[tag=qysj_day,tag=true] remove true
scoreboard players set @a[scores={time_strike=7..}] time_strike 0

#召唤体限制
scoreboard players add @e[tag=zht] monster_time 1
tp @e[tag=zht,scores={monster_time=6000..}] ~ -128 ~

