#蝙蝠骑士
execute at @e[tag=!qy_bfqs,type=bat] run summon bat ~ ~ ~ {Passengers:[{id:"skeleton"}],Tags:["qy_bfqs"]}
execute at @e[type=bat] run kill @e[distance=..5,type=bat,tag=!qy_bfqs]
execute at @e[tag=qy_bfqs,type=bat] run item replace entity @e[type=minecraft:skeleton,distance=..2] weapon.mainhand with minecraft:bow 1
#幻翼轰炸机
execute as @a at @s unless entity @e[type=minecraft:tnt] at @e[distance=..15,type=phantom] run summon minecraft:tnt ~ ~ ~ {Fuse:100}
#地狱吞噬
execute if entity @e[tag=timetable_4,scores={timer=590..600}] at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace netherrack
#鸡骑士_无条件连锁
execute as @e[type=minecraft:chicken,tag=!qysj_jqs] at @s if entity @e[type=minecraft:zombie,distance=..2] run summon chicken ~ ~ ~ {Passengers:[{id:"zombie",IsBaby:1}],CustomName:"鸡骑士",Tags:["qysj_jqs"]}
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=minecraft:chicken,tag=!qysj_jqs,distance=..2]
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:chicken"}}]
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather"}}]
#钻石不掉落
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]
execute as @e[type=minecraft:horse] at @s if entity @a[distance=..5] run data merge entity @s {Age:-2}
execute as @e[type=minecraft:sheep] at @s if entity @a[distance=..3] run data merge entity @s {Sheared:1}
#冰箭；双循环+连锁
execute at @e[type=minecraft:stray] run execute as @e[type=arrow,distance=..4,tag=!qysj_bj] run tag @s add qysj_bj
execute at @e[tag=qysj_bj] at @a[distance=..4] run fill ~1 ~2 ~1 ~-1 ~ ~-1 ice replace air
execute at @a run kill @e[tag=qysj_bj,nbt={inGround:1b},distance=..3]
#
execute at @a run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 dirt replace farmland
execute at @e[type=minecraft:ghast] run kill @e[type=arrow,distance=..10]
execute as @e[type=minecraft:wither_skull] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air
execute at @e[type=minecraft:squid] run effect give @a[distance=..6] blindness 5 0 
execute at @e[type=minecraft:husk] run execute at @a[distance=..2] run setblock ~ ~ ~ minecraft:fire keep
execute as @e[type=minecraft:hoglin] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute as @e[type=ender_dragon] at @s positioned ~ ~-4 ~ if entity @a[distance=..2] run tp @p ~ ~ ~
execute at @e[type=minecraft:pig] run execute at @a[distance=..2] run summon minecraft:tnt ~ ~ ~
execute at @e[type=minecraft:cow] run execute as @a[distance=..3] at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~10 ~
execute at @a run effect give @e[type=blaze,distance=..15] invisibility 3 1

effect give @e[type=skeleton,tag=!qysj_boss] minecraft:strength 10 254

effect give @e[type=minecraft:creeper,scores={timetable=80..90}] minecraft:invisibility 1 0 true
scoreboard players set @e[type=minecraft:creeper,scores={timetable=90..}] timetable 0