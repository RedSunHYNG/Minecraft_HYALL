# !--world
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier"}}]
execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:barrier
execute at @e[tag=qysj] run kill @a[distance=..15,tag=!hy]


# !--time main 

scoreboard players add @e[tag=timetable,type=armor_stand] timetable 1
#主世界计时器
execute if entity @e[scores={timetable=1..},tag=timetable_1] run function main:round_a
execute if entity @e[scores={timetable=6000..},tag=timetable_1] run function main:round_b
execute if entity @e[scores={timetable=30000..},tag=timetable_1] run function main:round_c
#顺序时间执行：MAX：100
scoreboard players set @e[scores={timetable=61..},tag=timetable_2] timetable 0
function main:timer
#三段循环计时器
execute if entity @e[scores={timer=10..},tag=timetable_3] run function main:time_a
execute if entity @e[scores={timer=150..},tag=timetable_4] run function main:time_b
execute if entity @e[scores={timer=300..},tag=timetable_5] run function main:time_c
#击发顺序计时器
scoreboard players add @e[scores={time_strike_2=1..}] time_strike_2 1

#怪物计时器/苦力怕隐身/玩家-耕地站立破坏
execute as @a at @s if block ~ ~-1 ~ minecraft:farmland run scoreboard players add @s timetable 1
execute as @a at @s if block ~ ~ ~ minecraft:farmland run scoreboard players add @s timetable 1
execute as @a at @s unless block ~ ~-1 ~ minecraft:farmland unless block ~ ~ ~ minecraft:farmland run scoreboard players set @s timetable 0
scoreboard players add @e[type=minecraft:creeper] timetable 1
scoreboard players add @e[type=!minecraft:armor_stand,tag=timeboss] time_boss 1

#独有计时
scoreboard players add @e[type=!armor_stand,type=!minecraft:zombie] nm_time 1
scoreboard players set @e[scores={nm_time=9999..}] nm_time 0

# !--steam
#不自动跳白天
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["qysj_day"]}
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run gamerule doDaylightCycle false
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run time set midnight
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run tellraw @a[tag=!qysj_day_say] [{"text":"永夜来临，夜晚的怪物更加恐怖!【站床上来破解永夜】","color":"gold"}]
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run tag @a[tag=!qysj_day_say] add qysj_day_say
execute if entity @e[tag=qysj_day,type=armor_stand] run execute as @a at @s if block ~ ~ ~ #minecraft:beds run scoreboard players set @s time_strike_2 1
execute at @a[scores={time_strike_2=2}] run time set day
execute at @a[scores={time_strike_2=3}] run fill ~5 ~-2 ~5 ~-5 ~2 ~-5 air replace #minecraft:beds
#execute at @a[scores={time_strike_2=4}] run kill @e[type=item,nbt={Item:{id:"minecraft:white_bed"}},distance=..5]
execute at @a[scores={time_strike_2=4}] run kill @e[type=item,distance=..3]
execute at @a[scores={time_strike_2=5}] run gamerule doDaylightCycle true
execute at @a[scores={time_strike_2=6}] run kill @e[type=armor_stand,tag=qysj_day]
execute at @a[scores={time_strike_2=6}] run tag @a remove qysj_day_say
scoreboard players set @a[scores={time_strike_2=7..}] time_strike_2 0

