# !---boos1
#3000;
execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:glass
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

# !---boos2
#虚空权能:2 
execute if entity @e[tag=bossskill_b,scores={bossskill=1}] at @e[tag=qysj_boss] run kill @a[distance=..1]
#伪·星坠:2
execute if entity @e[tag=bossskill_b,scores={bossskill=2}] run say boss星坠蓄力完毕，下一只箭将附带秒杀效果。
execute as @e[tag=bossskill_b,scores={bossskill=2}] at @e[tag=qysj_boss] run tag @e[tag=qysj_booss] add qysj_bj
#雷怒·威光:2
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800}
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800}
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] at @e[type=minecraft:skeleton,tag=qysj_boss] run spreadplayers ~ ~ 1 15 false @e[distance=..2,type=item,nbt={Item:{id:"minecraft:nether_star"}}]
execute if entity @e[tag=bossskill_b,scores={bossskill=3}] if entity @e[type=minecraft:skeleton,tag=qysj_boss] at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run summon minecraft:lightning_bolt ~ ~ ~
#伪·总端源·召集:2
execute if entity @e[tag=bossskill_b,scores={bossskill=4}] as @e[type=minecraft:skeleton,tag=qysj_boss] at @s run tp @a[limit=1,sort=furthest] ~ ~ ~
#天灾
execute if entity @e[tag=bossskill_b,scores={bossskill=5}] at @e[type=minecraft:skeleton,tag=qysj_boss] run setblock ~ ~ ~ minecraft:spawner{MaxNearbyEntities:6s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{Health:1000,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{lvl:100,id:"minecraft:protection"}]}},{id:"minecraft:zombie_head",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}}],Attributes:[{Base:2000,Name:"generic.max_health"},{Base:1.0d,Name:"generic.knockback_resistance"}],HandDropChances:[1.0f,0.0f],id:"minecraft:skeleton",Tags:["qysj_booss"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{lvl:999999999,id:"minecraft:sharpness"}]}},{id:"minecraft:totem_of_undying",Count:20b}]},MaxSpawnDelay:800s,Delay:477s,SpawnRange:4s,MinSpawnDelay:200s,SpawnPotentials:[{Entity:{Health:1000,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{lvl:100,id:"minecraft:protection"}]}},{id:"minecraft:zombie_head",Count:1b,tag:{Enchantments:[{lvl:10,id:"minecraft:protection"}]}}],Attributes:[{Base:2000,Name:"generic.max_health"},{Base:1.0d,Name:"generic.knockback_resistance"}],HandDropChances:[1.0f,0.0f],id:"minecraft:skeleton",Tags:["qysj_booss"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{lvl:999999999,id:"minecraft:sharpness"}]}},{id:"minecraft:totem_of_undying",Count:20b}]},Weight:1}]}
#天灾
execute if entity @e[tag=bossskill_b,scores={bossskill=6}] at @e[type=minecraft:skeleton,tag=qysj_boss] run setblock ~ ~ ~ minecraft:spawner{SpawnData:{id:""},SpawnPotentials:[{Weight:100,Entity:{id:"minecraft:wither_skeleton"}},{Weight:100,Entity:{id:"minecraft:ravager"}},{Weight:100,Entity:{id:"minecraft:vindicator"}},{Weight:100,Entity:{id:"minecraft:slime"}},{Weight:100,Entity:{id:"minecraft:witch"}},{Weight:100,Entity:{id:"minecraft:husk"}},{Weight:100,Entity:{id:"minecraft:illusioner"}},{Weight:100,Entity:{id:"minecraft:phantom"}},{Weight:100,Entity:{id:"minecraft:ghast"}},{Weight:100,Entity:{id:"minecraft:ravager"}},{Weight:100,Entity:{id:"minecraft:vex"}},{Weight:5,Entity:{DragonPhase:0,id:"minecraft:ender_dragon"}},{Weight:100,Entity:{id:"minecraft:stray"}},{Weight:100,Entity:{Color:0,AttachFace:3,id:"minecraft:shulker"}}]}

kill @e[tag=timetable_4,scores={timer=600..}]