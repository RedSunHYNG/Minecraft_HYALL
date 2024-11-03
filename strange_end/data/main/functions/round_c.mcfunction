execute as @e[type=minecraft:zombie,tag=!qysj_boss] at @s positioned ^ ^ ^5 if entity @a[distance=..2] run tp @p
#骷髅近身变剑
execute as @e[type=minecraft:skeleton,tag=!qysj_boss,nbt={HandItems:[{id:"minecraft:bow"}]}] at @s if entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:stone_sword 1
execute as @e[type=minecraft:skeleton,tag=!qysj_boss,nbt={HandItems:[{id:"minecraft:stone_sword"}]}] at @s unless entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:bow 1
#兔子 跳跃 速度
effect give @e[type=minecraft:rabbit] minecraft:jump_boost 30 0
effect give @e[type=minecraft:rabbit] minecraft:speed 30 0
#复生
execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] run execute if entity @e[tag=!fst_z,type=zombie,distance=..3] run summon zombie ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["fst_z","qy_new"]}
execute at @e[type=zombie,tag=fst_z,tag=qy_new] run kill @e[distance=..4,type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}]
tag @e[tag=qy_new,tag=fst_z] remove qy_new

execute at @e[type=item,nbt={Item:{id:"minecraft:bone"}}] run execute if entity @e[tag=!fst_s,type=skeleton,distance=..3] run summon skeleton ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["fst_s","qy_new"]}
execute at @e[type=skeleton,tag=fst_s,tag=qy_new] run kill @e[distance=..4,type=item,nbt={Item:{id:"minecraft:bone"}}]
tag @e[tag=qy_new,tag=fst_s] remove qy_new
#史莱姆:腐蚀防具，中毒
execute as @e[type=minecraft:slime] at @s run effect give @a[distance=..2] minecraft:poison 30 0
execute as @e[type=minecraft:slime] at @s run item replace entity @a[distance=..1] armor.head with minecraft:air 1
execute as @e[type=minecraft:slime] at @s run item replace entity @a[distance=..1] armor.chest with minecraft:air 1
execute as @e[type=minecraft:slime] at @s run item replace entity @a[distance=..1] armor.legs with minecraft:air 1
execute as @e[type=minecraft:slime] at @s run item replace entity @a[distance=..1] armor.feet with minecraft:air 1

#
execute if entity @e[tag=timetable_1,scores={timetable=55..60}] at @a as @e[type=minecraft:zombie,sort=random,limit=1,distance=..100] run data merge entity @s {IsBaby:1}
execute at @e[tag=qysj_day,type=armor_stand] run effect give @a slowness 4 0
execute at @e[tag=qysj_day,type=armor_stand] run effect give @a weakness 4 0
execute at @e[tag=qysj_day,type=armor_stand] run effect give @a minecraft:mining_fatigue 4 0

