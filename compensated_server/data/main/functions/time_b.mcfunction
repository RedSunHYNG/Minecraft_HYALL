#随机刻表2
# !---boos1
#3000;
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
tag @e[limit=1,sort=random,type=minecraft:wolf,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:iron_golem,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:zombified_piglin,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:enderman,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:villager,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:rabbit,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:horse,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:sheep,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:pig,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:cow,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt
tag @e[limit=1,sort=random,type=minecraft:squid,tag=!byt,tag=!sr_tst,tag=!tst,nbt=!{CustomName:'{"text":"免疫体"}'}] add byt

# !---boos2
#虚空权能:2 
execute if entity @e[tag=bossskill_b,scores={bossskill=1}] at @e[tag=qysj_boss] run kill @a[distance=..1]
#伪·星坠:2
execute if entity @e[tag=bossskill_b,scores={bossskill=2}] at @e[tag=qysj_boss] run say boss星坠蓄力完毕,下一只箭将附带秒杀效果。
execute as @e[tag=bossskill_b,scores={bossskill=2}] at @e[tag=qysj_boss] run tag @e[tag=qysj_booss] add qysj_bj
#雷怒·威光:2
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800}
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800}
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run spreadplayers ~ ~ 1 15 false @e[distance=..2,type=item,nbt={Item:{id:"minecraft:nether_star"}}]
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] if entity @e[type=minecraft:skeleton,tag=qysj_boss] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run summon minecraft:lightning_bolt ~ ~ ~
#伪·总端源·召集:2
execute if entity @e[tag=bossskill_b,scores={bossskill=4}] as @e[type=minecraft:skeleton,tag=qysj_boss] at @s run tp @a[limit=1,sort=furthest] ~ ~ ~
#天灾
execute if entity @e[tag=bossskill_b,scores={bossskill=5}] at @e[type=minecraft:skeleton,tag=qysj_boss] run setblock ~ ~ ~ minecraft:spawner{MaxNearbyEntities:6s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{Health:1000,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{lvl:100,id:"minecraft:protection"}]}},{id:"minecraft:zombie_head",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}}],Attributes:[{Base:2000,Name:"generic.max_health"},{Base:1.0d,Name:"generic.knockback_resistance"}],HandDropChances:[1.0f,0.0f],id:"minecraft:skeleton",Tags:["qysj_booss"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{lvl:255,id:"minecraft:sharpness"}]}},{id:"minecraft:totem_of_undying",Count:20b}]}},MaxSpawnDelay:800s,Delay:477s,SpawnRange:4s,MinSpawnDelay:200s,SpawnPotentials:[{data:{entity:{Health:1000,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{lvl:100,id:"minecraft:protection"}]}},{id:"minecraft:zombie_head",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}}],Attributes:[{Base:2000,Name:"generic.max_health"},{Base:1.0d,Name:"generic.knockback_resistance"}],HandDropChances:[1.0f,0.0f],id:"minecraft:skeleton",Tags:["qysj_booss"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{lvl:255,id:"minecraft:sharpness"}]}},{id:"minecraft:totem_of_undying",Count:20b}]}},weight:1}]}
#天灾
#bug-20240610未解决
execute if entity @e[tag=bossskill_b,scores={bossskill=6}] at @e[type=minecraft:skeleton,tag=qysj_boss] run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:""}},SpawnPotentials:[{weight:100,data:{entity:{id:"minecraft:wither_skeleton"}}},{weight:100,data:{entity:{id:"minecraft:ravager"}}},{weight:100,data:{entity:{id:"minecraft:vindicator"}}},{weight:100,data:{entity:{id:"minecraft:slime"}}},{weight:100,data:{entity:{id:"minecraft:witch"}}},{weight:100,data:{entity:{id:"minecraft:husk"}}},{weight:100,data:{entity:{id:"minecraft:illusioner"}}},{weight:100,data:{entity:{id:"minecraft:phantom"}}},{weight:100,data:{entity:{id:"minecraft:ghast"}}},{weight:100,data:{entity:{id:"minecraft:ravager"}}},{weight:100,data:{entity:{id:"minecraft:vex"}}},{weight:5,data:{entity:{DragonPhase:0,id:"minecraft:ender_dragon"}}},{weight:100,data:{entity:{id:"minecraft:stray"}}},{weight:100,data:{entity:{Color:0,AttachFace:3,id:"minecraft:shulker"}}}]}


kill @e[tag=timetable_4]