#随机刻表2
# !---boos1
#3000;
#蠹虫
execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:infested_stone replace minecraft:stone
execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:infested_deepslate replace minecraft:deepslate


#唤魔僵尸的特殊召唤
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=1..5}] run summon minecraft:stray ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=5..9}] run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=1..2}] run summon minecraft:husk ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=3..5}] run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=6..7}] run summon minecraft:drowned ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[tag=monster_time1,scores={monster_type=8..9}] run summon minecraft:giant ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:sheep,tag=byt] at @s if entity @e[tag=monster_time1,scores={monster_type=1..5}] run summon minecraft:evoker ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:sheep,tag=byt] at @s if entity @e[tag=monster_time1,scores={monster_type=5..9}] run summon minecraft:pillager ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:horse,tag=byt] at @s if entity @e[tag=monster_time1,scores={monster_type=1..5}] run summon minecraft:vindicator ~ ~ ~ {Tags:["zht"]}
execute as @e[type=minecraft:horse,tag=byt] at @s if entity @e[tag=monster_time1,scores={monster_type=5..9}] run summon minecraft:ravager ~ ~ ~ {Tags:["zht"]}

data merge entity @e[limit=1,sort=random,type=minecraft:horse,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"冲锋战马"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:sheep,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"恶魔黑山羊"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:wolf,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:iron_golem,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:zombified_piglin,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:villager,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:rabbit,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"]}
data merge entity @e[limit=1,sort=random,type=minecraft:pig,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:cow,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:squid,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"变异体"}'}
data merge entity @e[limit=1,sort=random,type=minecraft:enderman,tag=!byt,tag=!tst,tag=!myt,tag=!grt] {Tags:["grt"],CustomName:'{"text":"不详黑渊"}'}

#boss
execute as @a at @s if entity @e[type=minecraft:wither,distance=..100] unless entity @e[type=minecraft:tnt,distance=..100] run summon minecraft:tnt ~ ~ ~ {Fuse:100}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon creeper ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon skeleton ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon zombie ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon spider ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:witch ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:stray ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:phantom ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:slime ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:chicken ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:pig ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute at @a if entity @e[type=ender_dragon,distance=..250] run summon minecraft:cow ~ ~100 ~ {ActiveEffects:[{Id:11,Amplifier:4,Duration:100}]}
execute as @e[type=ender_dragon] at @s if block ~ ~-10 ~ minecraft:air run summon minecraft:end_crystal ~ ~ ~

#
scoreboard players set @e[type=minecraft:armor_stand,tag=monster_time3] monster_time 0