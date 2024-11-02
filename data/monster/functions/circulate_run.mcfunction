#------
#胖子僵尸生命恢复+强制嘲讽
scoreboard players add @e[type=minecraft:zombie,tag=type2,tag=byt] monster_time 1
effect give @e[type=minecraft:zombie,tag=type2,tag=byt,scores={monster_time=100..}] instant_damage 1 0
scoreboard players set @e[type=minecraft:zombie,tag=type2,tag=byt,scores={monster_time=101..}] monster_time 0
execute as @a at @s if entity @e[type=minecraft:zombie,tag=type2,tag=byt,distance=..4] run tp @s ~ ~ ~ facing entity @e[type=minecraft:zombie,tag=type2,tag=byt,limit=1,sort=nearest]
#流浪者:冰箭；双循环+连锁
execute at @e[type=minecraft:stray] run execute as @e[type=arrow,distance=..4,tag=!qysj_bj] run tag @s add qysj_bj
execute at @e[tag=qysj_bj] at @a[distance=..4] run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:ice replace air
execute at @a run kill @e[tag=qysj_bj,nbt={inGround:1b},distance=..3]
#突击骷髅-凋零骷髅绕后
scoreboard players add @e[type=minecraft:wither_skeleton,tag=byt,scores={monster_time=..100}] monster_time 1
execute as @a at @s if entity @e[type=minecraft:wither_skeleton,distance=..3,scores={monster_time=101}] positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:air run function monster:special_cd

#史莱姆:腐蚀防具
execute as @e[type=minecraft:slime,tag=type3] at @s if entity @a[distance=..2] run scoreboard players add @s monster_time 1
execute as @e[type=minecraft:slime,tag=type3] at @s unless entity @a[distance=..2] run scoreboard players set @s monster_time 0
execute as @e[type=minecraft:slime,tag=type3,scores={monster_time=40..}] at @s run function monster:special_cd_2

#超级苦力怕-随机威力
scoreboard players add @e[type=minecraft:creeper,tag=type1] monster_time 1
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=0..99}] at @s run data merge entity @s {ExplosionRadius: 3b}
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=100..199}] at @s run data merge entity @s {ExplosionRadius: 6b}
execute as @e[type=minecraft:creeper,tag=type1,scores={monster_time=200..249}] at @s run data merge entity @s {ExplosionRadius: 12b}
execute unless entity @e[tag=qysj_day,type=minecraft:armor_stand] run scoreboard players set @e[tag=type1,type=minecraft:creeper,scores={monster_time=250..}] monster_time 0
execute if entity @e[tag=qysj_day,type=minecraft:armor_stand] as @e[tag=type1,type=minecraft:creeper,scores={monster_time=250..}] at @s run data merge entity @s {ExplosionRadius: 24b}
scoreboard players set @e[type=minecraft:creeper,tag=type1,scores={monster_time=301..}] monster_time 0
#阔剑地雷-隐身苦力怕
scoreboard players add @e[type=minecraft:creeper,tag=type2] monster_time 1
effect give @e[type=minecraft:creeper,tag=type2,scores={monster_time=240..}] minecraft:invisibility 8 0 true
scoreboard players set @e[type=minecraft:creeper,tag=type2,scores={monster_time=240..}] monster_time 0

#凋零发射物会洞穿一切物品
execute as @e[type=minecraft:wither_skull] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air
#幻翼生成
scoreboard players add @a monster_time 1
execute as @a[scores={monster_time=12000..}] at @s if block ~ ~10 ~ minecraft:air run summon minecraft:phantom ~ ~10 ~
scoreboard players set @a[scores={monster_time=12000..}] monster_time 0
#地狱吞噬
scoreboard players add @a monster_solotime 1
execute as @a[scores={monster_solotime=5990..}] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace netherrack
scoreboard players set @a[scores={monster_solotime=6000..}] monster_solotime 0
