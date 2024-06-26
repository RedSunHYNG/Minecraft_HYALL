#随机刻表3
# !---boos3
#6000;
execute at @e[type=ender_dragon] run summon minecraft:armor_stand ~ ~-10 ~ {Glowing:1b,Tags:["qysj_hlfht"],CustomName:'[{"text":"黑龙复活台","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',CustomNameVisible:1b,ShowArms:1}
execute at @e[sort=random,limit=1,type=!minecraft:player] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b}

# !---boos3
#魂狩令:3
execute if entity @e[tag=bossskill_c,scores={bossskill=1}] at @e[tag=qysj_boss] run effect give @a[distance=..30] slowness 30 4
#血狩令:3
execute if entity @e[tag=bossskill_c,scores={bossskill=2}] at @e[tag=qysj_boss] as @a run attribute @s minecraft:generic.max_health base set 2
#复活娃娃:3
execute if entity @e[tag=bossskill_c,scores={bossskill=3}] at @e[tag=qysj_boss] run summon minecraft:zombie ~ ~1 ~ {CustomName:'[{"text":"复活娃娃","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Tags:["timeboss","spawboss","sr_tst"],NoAI:1b,IsBaby:1b}
execute if entity @e[tag=bossskill_c,scores={bossskill=3}] at @e[tag=qysj_boss] run say 消灭复活娃娃以防止boss回复命数。
#强化体:3
execute if entity @e[tag=bossskill_c,scores={bossskill=4}] at @e[tag=qysj_boss] run summon minecraft:zombie ~ ~1 ~ {CustomName:'[{"text":"强化娃娃","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Tags:["timeboss","powerboss","sr_tst"],NoAI:1b,IsBaby:1b}
execute if entity @e[tag=bossskill_c,scores={bossskill=4}] at @e[tag=qysj_boss] run say 消灭强化娃娃以防止boss进入歼灭模式。

kill @e[tag=timetable_5]