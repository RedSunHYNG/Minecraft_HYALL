scoreboard players add @e[type=!armor_stand] nm_time 1
scoreboard players set @e[scores={nm_time=9999..}] nm_time 0

#僵尸破门
execute as @e[type=minecraft:zombie] run data merge entity @s {CanBreakDoors:1}
execute as @e[type=minecraft:zombie,scores={nm_time=120..}] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
scoreboard players set @e[type=minecraft:zombie,scores={nm_time=120..}] nm_time 0
#蜘蛛生网
execute at @e[type=minecraft:spider,scores={nm_time=120..}] run execute at @a[distance=..3] run setblock ~ ~ ~ minecraft:cobweb
scoreboard players set @e[type=minecraft:spider,scores={nm_time=120..}] nm_time 0
#幻翼轰炸机
execute as @a at @s unless entity @e[type=minecraft:tnt] at @e[distance=..15,type=phantom] run summon minecraft:tnt ~ ~ ~ {Fuse:100}
#骷髅隐身
effect give @e[type=minecraft:skeleton,scores={nm_time=1}] minecraft:invisibility 10
scoreboard players set @e[type=minecraft:skeleton,scores={nm_time=400..}] nm_time 0
#蠹虫
execute as @a[scores={nm_time=600..1200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:stone replace minecraft:infested_stone
execute as @a[scores={nm_time=1800..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_stone replace minecraft:stone
execute as @a[scores={nm_time=1800..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_deepslate replace minecraft:deepslate
scoreboard players set @a[scores={nm_time=1800..}] nm_time 0
kill @e[type=minecraft:silverfish,scores={nm_time=3000..}]
#恶魂烈焰弹
execute as @e[type=minecraft:fireball] at @s if entity @a[distance=..2] run summon minecraft:tnt ~ ~ ~
#凋零骷髅
execute as @a at @s if entity @e[type=minecraft:wither_skeleton,distance=..3] positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:air run tp @e[type=minecraft:wither_skeleton,sort=nearest,limit=1] ~ ~ ~
#随机超级爬行者
execute as @e[type=minecraft:creeper,scores={nm_time=1}] at @s run data merge entity @s {ExplosionRadius: 9b}
execute as @e[type=minecraft:creeper,scores={nm_time=51}] at @s run data merge entity @s {ExplosionRadius: 16b}
execute as @e[type=minecraft:creeper,scores={nm_time=151}] at @s run data merge entity @s {ExplosionRadius: 23b}
scoreboard players set @e[type=minecraft:creeper,scores={nm_time=301..}] nm_time 0
#杀人兔
execute as @e[type=minecraft:rabbit,sort=random,limit=1] unless entity @e[type=minecraft:rabbit,nbt={RabbitType:99}] run data merge entity @s {RabbitType:99}

execute if entity @a[scores={nm_time=900}] as @e[type=minecraft:enderman,limit=1,sort=random] at @s run data modify entity @s AngryAt set from entity @p UUID