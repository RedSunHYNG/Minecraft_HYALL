#僵尸武装：破门/斧子/头套
execute as @e[type=minecraft:zombie] run data merge entity @s {CanBreakDoors:1}
item replace entity @e[type=minecraft:zombie] armor.head with minecraft:acacia_leaves
item replace entity @e[type=minecraft:zombie] weapon with wooden_axe
#苦力怕不死
effect give @e[type=minecraft:creeper] resistance 3 5
#骷髅头套
item replace entity @e[type=minecraft:skeleton,tag=!qysj_boss,limit=1,sort=random] armor.head with minecraft:acacia_leaves
#中立生物始终仇视
execute as @e[type=minecraft:wolf] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=minecraft:iron_golem] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=minecraft:zombified_piglin] at @s run data modify entity @s AngryAt set from entity @p UUID
#村民闪电
execute at @e[type=minecraft:villager,tag=!sr_steam] run execute at @a[distance=..2] run summon lightning_bolt ~ ~ ~
#女巫
execute at @e[type=minecraft:witch] run effect give @a[distance=..5] slowness 5 4
#蜘蛛生网
execute at @e[type=minecraft:spider] run execute at @a[distance=..3] run setblock ~ ~ ~ minecraft:cobweb
#杀人兔
execute as @e[type=minecraft:rabbit] run data merge entity @s {RabbitType:99}
#黑人抬棺
execute at @e[type=minecraft:enderman] run fill ~5 ~ ~5 ~-5 ~ ~-5 air replace chest
#压人史莱姆
execute at @e[type=minecraft:slime] run execute as @a[distance=..2] at @s unless block ~ ~1 ~ minecraft:air run tp @s ~ ~-1 ~
