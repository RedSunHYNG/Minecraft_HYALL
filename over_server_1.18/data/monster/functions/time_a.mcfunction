#随机刻表1
# !---boos1
#100;
#夜晚的水因为太阳照射不到有毒
execute if entity @e[tag=qysj_day,type=armor_stand] as @a at @s if block ~ ~ ~ water run effect give @s poison 10 1
#虫母召唤洞穴蜘蛛
execute as @e[type=minecraft:spider,tag=byt,tag=minboss] at @s run summon minecraft:cave_spider ~ ~ ~ {Tags:["zht"]}
#鸡骑士
execute as @e[type=minecraft:zombie,tag=!tst,tag=!byt,limit=1,sort=random] at @s run summon minecraft:chicken ~ ~ ~ {Passengers:[{id:"minecraft:zombie",IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_leaves", Count: 1b}],HandItems:[{id:"minecraft:wooden_axe", Count: 1b},{}],Tags:["byt"],CustomName:'{"text":"鸡骑士"}'}],CustomName:'{"text":"鸡坐骑"}',Tags:["byt"]}

#怪物选取
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"],CustomName:'{"text":"刺客僵尸"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"],CustomName:'{"text":"胖子僵尸"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:zombie,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"],CustomName:'{"text":"唤魔僵尸"}'}

data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"],CustomName:'{"text":"巫蛊骷髅"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"],CustomName:'{"text":"武斗骷髅"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"],CustomName:'{"text":"唤魔骷髅"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"],CustomName:'{"text":"隐身狙击手"}'}

data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"],CustomName:'{"text":"重力史莱姆"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"],CustomName:'{"text":"毒液史莱姆"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type3"],CustomName:'{"text":"腐蚀史莱姆"}'}
execute if entity @e[tag=monster_time1,scores={monster_type=1..3}] run data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"],CustomName:'{"text":"巨型史莱姆"}',Size:18}
execute if entity @e[tag=monster_time1,scores={monster_type=4..6}] run data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"],CustomName:'{"text":"巨型史莱姆"}',Size:12}
execute if entity @e[tag=monster_time1,scores={monster_type=7..9}] run data merge entity @e[limit=1,sort=random,type=minecraft:slime,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type4"],CustomName:'{"text":"巨型史莱姆"}',Size:6}

data merge entity @e[limit=1,sort=random,type=minecraft:creeper,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type1"],CustomName:'{"text":"惊喜苦力怕"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:creeper,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt","type2"],CustomName:'{"text":"阔剑地雷"}'}


data merge entity @e[limit=1,sort=random,type=minecraft:witch,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:witch,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:husk,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:hoglin,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:spider,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:wither_skeleton,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:drowned,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:pillager,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}

#末影龙
execute at @e[tag=qysj_hlfht] unless entity @e[type=ender_dragon] run summon minecraft:ender_dragon ~ ~10 ~
execute at @e[type=minecraft:ender_dragon] run execute at @a[distance=..50] run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:lightning_bolt"}},SpawnPotentials:[{data:{entity:{id:"minecraft:lightning_bolt"}},weight:1}]}

#
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time2] monster_time 0