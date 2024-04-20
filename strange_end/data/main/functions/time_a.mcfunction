# !---boos1
#100;
attribute @e[limit=1,type=minecraft:zombie,sort=random] minecraft:zombie.spawn_reinforcements base set 300
execute as @a at @s if block ~ ~ ~ water run effect give @s poison 10 1
effect give @e[type=minecraft:skeleton] minecraft:invisibility 2 0
execute at @e[tag=qysj_hlfht] unless entity @e[type=ender_dragon] run summon minecraft:ender_dragon ~ ~10 ~
execute at @e[type=minecraft:ender_dragon] run execute at @a[distance=..50] run setblock ~ ~ ~ minecraft:spawner{BlockEntityTag:{SpawnData:{id:"minecraft:lightning_bolt"},SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:lightning_bolt"}}]}}

# !---boos2
#千能箭
execute if entity @e[tag=bossskill_a,scores={bossskill=1}] at @e[tag=qysj_boss] run say warning:头上出现空间扭曲痕迹
execute if entity @e[tag=bossskill_a,scores={bossskill=1}] at @e[tag=qysj_boss] at @a[distance=..100] run summon minecraft:arrow ~ ~3 ~ {Motion:[0.0,0.0,0.0],pickup:0,crit:1b,CustomPotionEffects:[{Id:7,Amplifier:254,Duration:600,ShowParticles:0b}],Tags:["sr_tst"]}
#常规
execute if entity @e[tag=bossskill_a,scores={bossskill=2}] at @e[tag=qysj_boss] at @a[distance=10..30] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @e[tag=bossskill_a,scores={bossskill=2}] at @e[tag=qysj_boss] run clear @a[distance=..1]
#天灾
execute if entity @e[tag=bossskill_a,scores={bossskill=3}] run function main:other_boss

kill @e[tag=timetable_3,scores={timer=20..}]
