#阶段B函数

#蝙蝠骑士
execute at @e[tag=!qy_bfqs,type=bat] run summon bat ~ ~ ~ {Passengers:[{id:"skeleton"}],Tags:["qy_bfqs"]}
execute at @e[type=bat] run kill @e[distance=..5,type=bat,tag=!qy_bfqs]
execute at @e[tag=qy_bfqs,type=bat] run item replace entity @e[type=minecraft:skeleton,distance=..2] weapon.mainhand with minecraft:bow 1
#幻翼轰炸机
#execute as @a at @s unless entity @e[type=minecraft:tnt] at @e[distance=..15,type=phantom] run summon minecraft:tnt ~ ~ ~ {Fuse:100}
execute as @a at @s unless entity @e[tag=!tst_hy] at @e[distance=..15,type=phantom] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst","tst_hy"],ActiveEffects:[{Id:11,Amplifier:4,Duration:120}],Fuse:10}
#地狱吞噬
execute if entity @e[tag=timetable_4,scores={timer=590..600}] at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace netherrack
#鸡骑士_无条件连锁
execute as @e[type=minecraft:chicken,tag=!qysj_jqs] at @s if entity @e[type=minecraft:zombie,distance=..2] run summon chicken ~ ~ ~ {Passengers:[{id:"zombie",IsBaby:1}],CustomName:'{"text":"鸡骑士"}',Tags:["qysj_jqs"]}
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=minecraft:chicken,tag=!qysj_jqs,distance=..2]
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:chicken"}}]
execute at @e[type=minecraft:chicken,tag=qysj_jqs] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather"}}]
#钻石不掉落
data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=random] Item set value {id:"minecraft:diamond_ore",Count:1b}
execute as @e[type=minecraft:horse,tag=byt] at @s if entity @a[distance=..5] run data merge entity @s {Age:-2}
execute as @e[type=minecraft:sheep,tag=byt] at @s if entity @a[distance=..3] run data merge entity @s {Sheared:1}

#冰箭；双循环+连锁
execute at @e[type=minecraft:stray] run execute as @e[type=arrow,distance=..4,tag=!qysj_bj] run tag @s add qysj_bj
execute at @e[tag=qysj_bj] at @a[distance=..4] run fill ~1 ~2 ~1 ~-1 ~ ~-1 ice replace air
execute at @a run kill @e[tag=qysj_bj,nbt={inGround:1b},distance=..3]
#
#耕地破坏
execute as @a[scores={timetable=60..}] at @s if block ~ ~-1 ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
execute as @a[scores={timetable=60..}] at @s if block ~ ~ ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland

execute at @e[type=minecraft:ghast,tag=byt] run kill @e[type=arrow,distance=..10]
execute as @e[type=minecraft:wither_skull,tag=byt] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air
execute at @e[type=minecraft:squid,tag=byt] run effect give @a[distance=..6] blindness 5 0 
execute at @e[type=minecraft:husk,tag=byt] run execute at @a[distance=..2] run setblock ~ ~ ~ minecraft:fire keep
execute as @e[type=minecraft:hoglin,tag=byt] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute as @e[type=ender_dragon] at @s positioned ~ ~-4 ~ if entity @a[distance=..2] run tp @p ~ ~ ~
#execute at @e[type=minecraft:pig,tag=byt] run execute at @a[distance=..2] run summon minecraft:tnt ~ ~ ~
execute at @e[type=minecraft:pig,tag=byt] run execute at @a[distance=..2] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst"],Fuse:10}
execute at @e[type=minecraft:cow,tag=byt] run execute as @a[distance=..2] at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~10 ~
execute at @a run effect give @e[type=blaze,distance=..15,tag=byt] invisibility 3 1

effect give @e[type=skeleton,tag=!qysj_boss,tag=byt] minecraft:strength 10 2

execute if entity @e[tag=qysj_day,type=armor_stand] run effect give @e[type=minecraft:creeper,scores={timetable=80..90}] minecraft:invisibility 1 0 true
scoreboard players set @e[type=minecraft:creeper,scores={timetable=90..}] timetable 0

#骷髅
effect give @e[type=minecraft:skeleton,scores={nm_time=1}] minecraft:invisibility 10
scoreboard players set @e[type=minecraft:skeleton,scores={nm_time=400..}] nm_time 0
#恶魂烈焰弹
execute as @e[type=minecraft:fireball] at @s if entity @a[distance=..2] run summon minecraft:tnt ~ ~ ~
#凋零骷髅
execute as @a at @s if entity @e[type=minecraft:wither_skeleton,distance=..3] positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:air run tp @e[type=minecraft:wither_skeleton,sort=nearest,limit=1] ~ ~ ~

#随机超级爬行者
execute as @e[type=minecraft:creeper,scores={nm_time=0..99}] at @s run data merge entity @s {ExplosionRadius: 3b}
execute as @e[type=minecraft:creeper,scores={nm_time=100..199}] at @s run data merge entity @s {ExplosionRadius: 6b}
execute as @e[type=minecraft:creeper,scores={nm_time=200..249}] at @s run data merge entity @s {ExplosionRadius: 12b}

scoreboard players set @e[type=minecraft:creeper,scores={nm_time=301..}] nm_time 0