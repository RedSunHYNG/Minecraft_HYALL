#阶段A函数

#byt 标签 随机给种类某个生物附加此值
execute as @e[tag=byt,nbt=!{CustomName:'{"text":"变异体"}'}] at @s run data modify entity @s CustomName set value '{"text":"变异体"}'
#僵尸武装：破门/斧子/头套
execute as @e[type=minecraft:zombie] run data merge entity @s {CanBreakDoors:1}
item replace entity @e[type=minecraft:zombie] armor.head with minecraft:acacia_leaves
item replace entity @e[type=minecraft:zombie] weapon with wooden_axe
#骷髅头套
item replace entity @e[type=minecraft:skeleton,tag=!qysj_boss,limit=1,sort=random] armor.head with minecraft:acacia_leaves
#中立生物始终仇视
execute as @e[type=minecraft:wolf,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=minecraft:iron_golem,tag=!sr_tst,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=minecraft:zombified_piglin,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=minecraft:enderman,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#村民闪电
execute at @e[type=minecraft:villager,tag=!sr_tst,tag=byt] run execute at @a[distance=..2] run summon lightning_bolt ~ ~ ~
#女巫
execute at @e[type=minecraft:witch,tag=byt] run effect give @a[distance=..5] slowness 5 4
#蜘蛛生网
execute at @e[type=minecraft:spider] run execute at @a[distance=..3] run setblock ~ ~ ~ minecraft:cobweb
#杀人兔
execute as @e[type=minecraft:rabbit,tag=byt] run data merge entity @s {RabbitType:99}
#压人史莱姆
execute as @a at @s if entity @e[distance=..2,type=minecraft:slime,tag=byt] run tp @s ~ ~-1 ~ 
#
#蠹虫
execute as @a[scores={nm_time=2500..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_stone replace minecraft:stone
execute as @a[scores={nm_time=2500..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_deepslate replace minecraft:deepslate
scoreboard players set @a[scores={nm_time=2500..}] nm_time 0
kill @e[type=minecraft:silverfish,scores={nm_time=4000..}]