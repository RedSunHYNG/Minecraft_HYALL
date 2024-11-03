# !--world
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier"}}]
execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:barrier
execute at @e[tag=qysj] run kill @a[distance=..15,tag=!hy]


# !--time main 
#复活
execute as @a[gamemode=spectator] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
gamemode survival @a[scores={time_strike_1=2}]
execute as @a[scores={time_strike_1=3}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:soul_campfire
tag @a[scores={time_strike_1=4}] remove unhelpdead
scoreboard players add @e[scores={time_strike_1=5..}] time_strike_1 0

scoreboard players add @e[tag=timetable,type=armor_stand] timetable 1
#主世界计时器
execute if entity @e[scores={timetable=1..},tag=timetable_1] run function main:round_a
execute if entity @e[scores={timetable=6000..},tag=timetable_1] run function main:round_b
execute if entity @e[scores={timetable=30000..},tag=timetable_1] run function main:round_c
#顺序时间执行：MAX：100
scoreboard players set @e[scores={timetable=100..},tag=timetable_2] timetable 0
function main:timer
#三段循环计时器
execute if entity @e[scores={timer=20..},tag=timetable_3] run function main:time_a
execute if entity @e[scores={timer=600..},tag=timetable_4] run function main:time_b
execute if entity @e[scores={timer=1200..},tag=timetable_5] run function main:time_c
#击发顺序计时器
scoreboard players add @e[scores={time_strike_1=1..}] time_strike_1 1
scoreboard players add @e[scores={time_strike_2=1..}] time_strike_2 1
#怪物计时器/苦力怕隐身/？
scoreboard players add @e[type=minecraft:creeper] timetable 1
scoreboard players add @e[type=!minecraft:armor_stand,tag=timeboss] time_boss 1


# !--steam
#不自动跳白天
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["qysj_day"]}
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run gamerule doDaylightCycle false
execute if block 2 250 -2 minecraft:daylight_detector[inverted=true,power=6] run time set midnight
execute if entity @e[tag=qysj_day,type=armor_stand] run execute as @a at @s if block ~ ~ ~ #minecraft:beds run scoreboard players set @s time_strike_2 1
execute at @a[scores={time_strike_2=2}] run time set day
execute at @a[scores={time_strike_2=3}] run fill ~5 ~-2 ~5 ~-5 ~2 ~-5 air replace #minecraft:beds
execute at @a[scores={time_strike_2=4}] run kill @e[type=item,nbt={Item:{id:"minecraft:white_bed"}},distance=..5]
execute at @a[scores={time_strike_2=5}] run gamerule doDaylightCycle true
execute at @a[scores={time_strike_2=6}] run kill @e[type=armor_stand,tag=qysj_day]
scoreboard players set @a[scores={time_strike_2=7..}] time_strike_2 0
#helpdead
gamemode spectator @a[scores={qysj_dead_fh=1},tag=!unhelpdead]
execute at @a[scores={qysj_dead_fh=1},gamemode=spectator,tag=!unhelpdead] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,CustomName: '{"text":"墓碑"}',Tags:["helptime"],Invisible:1,ShowArms:1,Marker:1,}
tell @a[scores={qysj_dead_fh=1},gamemode=spectator,tag=!unhelpdead] 你有600ticks等待其他存活者在你身边2米内等待100ticks来复活你，超过将时间将彻底成为亡灵。
scoreboard players add @a[scores={qysj_dead_fh=1..},gamemode=spectator] qysj_dead_fh 1
tag @a[scores={qysj_dead_fh=600..}] add unhelpdead
scoreboard players set @a[scores={qysj_dead_fh=601..},gamemode=spectator] qysj_dead_fh 0
execute as @a[scores={qysj_dead_fh=..600},gamemode=spectator,tag=!unhelpdead] at @s if entity @a[distance=1..3] run scoreboard players add @s helptime 1
execute at @e[tag=helptime] run tp @a[gamemode=spectator,tag=!unhelpdead] ~ ~ ~
gamemode survival @a[scores={helptime=100..}]
scoreboard players set @a[gamemode=survival] qysj_dead_fh 0
scoreboard players set @a[gamemode=survival] helptime 0