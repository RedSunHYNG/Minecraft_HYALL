# ！---steam
function main:main

#建筑保护
execute unless entity @e[type=minecraft:armor_stand,tag=qysj] run summon minecraft:armor_stand 0 250 -1 {Tags:["qysj"]}
execute unless entity @e[type=armor_stand,tag=qysj_lastboos] run summon minecraft:armor_stand 1 250 0 {Tags:["qysj_lastboos","qysj_say1","qysj_say2"]}
execute unless entity @e[type=armor_stand,tag=timetable_1] run summon minecraft:armor_stand 1 250 1 {Tags:["timetable_1","timetable"]}
execute unless entity @e[type=armor_stand,tag=timetable_2] run summon minecraft:armor_stand 1 250 2 {Tags:["timetable_2","timetable"]}
execute unless entity @e[type=armor_stand,tag=timetable_3] run summon minecraft:armor_stand 1 250 3 {Tags:["timetable_3","timer"]}
execute unless entity @e[type=armor_stand,tag=timetable_4] run summon minecraft:armor_stand 1 250 4 {Tags:["timetable_4","timer"]}
execute unless entity @e[type=armor_stand,tag=timetable_5] run summon minecraft:armor_stand 1 250 5 {Tags:["timetable_5","timer"]}
execute unless block 2 250 -2 minecraft:daylight_detector[inverted=true] run setblock 2 250 -2 minecraft:daylight_detector[inverted=true]

#代码保护
execute at @e[tag=timetable_1] run kill @a[distance=..15,tag=!hy]

