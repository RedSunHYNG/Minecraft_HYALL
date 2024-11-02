#3-1q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=1,hy_zdy_r2=1..}] run tp @a[distance=1..] ~ ~ ~
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=1,hy_zdy_r2=1..}] hy_zdy_qmode 0
#3-2
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2,hy_zdy_r2=1..}] at @s run execute positioned ^ ^ ^3 run tp @e[distance=..2] ^ ^ ^100
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2,hy_zdy_r2=1..}] hy_zdy_r2 0
#3-2q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2,hy_zdy_qmode=1..}] as @e[tag=!hy_zdy_bj,distance=1..5] run say 被当垃圾扔掉了
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2,hy_zdy_qmode=1..}] run spreadplayers ~ ~ 10 1000 false @e[tag=!hy_zdy_bj,distance=1..5]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=2,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#3-3
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=3,hy_zdy_r2=1..}] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air destroy
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=3,hy_zdy_r2=1..}] hy_zdy_r2 0
#3-3q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=3,hy_zdy_qmode=1..}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=3,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#4-1
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_r2=1..}] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}}] run summon minecraft:potion ~ ~1 ~ {Motion:[0.0,0.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:CBC,CustomPotionEffects:[{Id:2,Amplifier:9,Duration:20000},{Id:4,Amplifier:9,Duration:20000},{Id:9,Amplifier:9,Duration:20000},{Id:15,Amplifier:9,Duration:20000},{Id:17,Amplifier:9,Duration:20000},{Id:18,Amplifier:9,Duration:20000},{Id:19,Amplifier:9,Duration:20000},{Id:20,Amplifier:9,Duration:20000},{Id:27,Amplifier:9,Duration:20000},{Id:1,Amplifier:0,Duration:600},{Id:3,Amplifier:0,Duration:600},{Id:5,Amplifier:0,Duration:600},{Id:6,Amplifier:0,Duration:600},{Id:7,Amplifier:0,Duration:600},{Id:8,Amplifier:0,Duration:600},{Id:11,Amplifier:0,Duration:600},{Id:12,Amplifier:0,Duration:600},{Id:13,Amplifier:0,Duration:600},{Id:14,Amplifier:0,Duration:600},{Id:16,Amplifier:0,Duration:600},{Id:21,Amplifier:0,Duration:600},{Id:22,Amplifier:0,Duration:600},{Id:23,Amplifier:0,Duration:600},{Id:24,Amplifier:0,Duration:600},{Id:25,Amplifier:0,Duration:600},{Id:26,Amplifier:0,Duration:600},{Id:28,Amplifier:0,Duration:600},{Id:29,Amplifier:0,Duration:600},{Id:30,Amplifier:0,Duration:600}]}}}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_r2=1..}] hy_zdy_r2 0
#4-2
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_r2=1..}] run say @e[tag=!hy_zdy_bj,distance=1..3]的决心碎了一地。
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_r2=1..}] run kill @e[tag=!hy_zdy_bj,distance=1..3]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_r2=1..}] hy_zdy_r2 0
#4-2q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] run say 神威辐射大地，万物寂灭。
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] run kill @e[tag=!hy_zdy_bj,distance=1..]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#4-3
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3,hy_zdy_r2=1..}] at @e[tag=!hy_zdy_bj,distance=1..5] run summon minecraft:evoker_fangs ~ ~1 ~ {Warmup:1,Owner:{OwnerUUIDLeast:0}}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3,hy_zdy_r2=1..}] hy_zdy_r2 0
#5-1
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^6 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^6 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^7 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^7 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^8 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^8 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^9 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^9 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^10 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^10 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^12 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^11 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^13 run summon tnt ~ ~ ~ {Silent:1b}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^ ^12 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] positioned ^ ^0.4 ^14 run summon tnt ~ ~ ~ {Silent:1b}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1,hy_zdy_r2=1..}] hy_zdy_r2 0
#5-2
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=2,hy_zdy_r2=1..}] at @s run summon minecraft:armor_stand ~ ~ ~ {PersistenceRequired:1,Tags:["hy_zdy_g2"],Silent:1,NoAI:1,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=2,hy_zdy_r2=1..}] at @s run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.1 0.5
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=2,hy_zdy_r2=1..}] at @s run tp @e[tag=hy_zdy_g2,distance=..3] ^ ^ ^-2 facing entity @p[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=2,hy_zdy_r2=1..}] feet
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=2,hy_zdy_r2=1..}] hy_zdy_r2 0
execute as @e[tag=hy_zdy_g2] at @s if block ~ ~ ~ air run tp @s ^ ^ ^1
execute as @e[tag=hy_zdy_g2] at @s unless block ~ ~ ~ air run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=hy_zdy_g2] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=hy_zdy_g2] at @s run summon tnt ~ ~-5 ~
execute as @e[tag=hy_zdy_g2] at @s run summon tnt ~ ~-10 ~
kill @e[tag=hy_zdy_g2]
#5-3
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_r2=1..}] at @s run summon minecraft:armor_stand ~ ~ ~ {PersistenceRequired:1,Tags:["hy_zdy_g1"],Silent:1,NoAI:1,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_r2=1..}] at @s run tp @e[tag=hy_zdy_g1,distance=..3] ^ ^ ^-2 facing entity @p[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_r2=1..}] feet
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_r2=1..}] hy_zdy_r2 0
execute as @e[tag=hy_zdy_g1] at @s run tp ^ ^ ^1
execute as @e[tag=hy_zdy_g1] at @s run fill ^-20 ^ ^5 ^20 ^3 ^5 air
execute as @e[tag=hy_zdy_g1] at @s run kill @e[distance=..20,nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}},tag=!hy_zdy_g1,tag=!hy_zdy_bj,type=!minecraft:item]
scoreboard players add @e[tag=hy_zdy_g1,type=minecraft:armor_stand] hy_zdy_times1 1
kill @e[tag=hy_zdy_g1,type=minecraft:armor_stand,scores={hy_zdy_times1=150..}]
#6-1猪头鱼炮
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=1,hy_zdy_r2=1..}] at @s at @e[tag=!hy_zdy_bj,nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}},sort=nearest,limit=1] run summon minecraft:pig ~ ~ ~ {Passengers:[{id:"minecraft:elder_guardian"}],ActiveEffects:[{Id:5,Amplifier:0,Duration:600}],Tags:["zdy_rhg1"]}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=1,hy_zdy_r2=1..}] hy_zdy_r2 0
execute as @e[type=minecraft:pig,tag=zdy_rhg1] at @s run tp @s ^ ^ ^0.1 facing entity @p[nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}}]
#6-2暗影护卫
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=2,hy_zdy_r2=1..}] run summon minecraft:zombie ~ ~ ~ {CustomName:'[{"text":"暗影护卫","color":"black"}]',Tags:["zdy_rhg2"],ActiveEffects:[{Id:7,Amplifier:254,Duration:1999980,ShowParticles:0b}],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:2147483647}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:2147483647}]}}]}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=2,hy_zdy_r2=1..}] hy_zdy_r2 0
execute as @e[type=minecraft:zombie,tag=zdy_rhg2] at @s run tp @s ^ ^ ^0.1 facing entity @p[nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}}]
#6-3蝙蝠炸弹
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=3,hy_zdy_r2=1..}] run summon minecraft:bat ~ ~1 ~ {Tags:["zdy_rhg1"]}
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode2"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=3,hy_zdy_r2=1..}] hy_zdy_r2 0
execute at @e[type=minecraft:bat,tag=zdy_rhg1] if entity @a[distance=..5,nbt=!{SelectedItem:{tag:{Tags:["mode2"]}}}] run summon minecraft:tnt ~ ~ ~
execute as @e[type=minecraft:bat,tag=zdy_rhg1] at @s run tp @s ^ ^ ^0.1 facing entity @p
#------------------------上

#------------------------下
#1-1
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=1}] as @e[distance=..3,type=minecraft:arrow] run data modify entity @s Item set from entity @a[distance=..3,limit=1] Inventory[{Slot:-106b}]
#1-2
execute as @e[type=minecraft:arrow,tag=hy_zdy_zd2] at @s unless entity @e[limit=10,tag=hy_zdfs] run summon minecraft:arrow ~ ~ ~ {Tags:["hy_zdfs"]}
execute as @e[type=minecraft:arrow,tag=hy_zdy_zd2] run data modify entity @s {} set from entity @e[limit=1,type=minecraft:arrow,tag=hy_zdfs] {}
#1-3
replaceitem entity @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=1,hy_zdy_zd=3}] weapon.mainhand minecraft:crossbow{Tags:["hy_zdy","mode1"],Charged:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:30b,Explosions:[{Type:0b,Colors:[I;5320730]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;15435844]},{Type:0b,Colors:[I;2651799]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;2437522]},{Type:0b,Colors:[I;11250603]},{Type:0b,Colors:[I;12801229]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;6719955]},{Type:0b,Colors:[I;8073150]},{Type:0b,Colors:[I;4408131]},{Type:0b,Colors:[I;11250603]},{Type:0b,Colors:[I;3887386]},{Type:0b,Colors:[I;1973019]},{Type:0b,Colors:[I;14188952]}]}}}],display:{Name:'[{"text":"诛仙始祖神弩","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
#2-1
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd4] as @e[tag=!hy_zdy_zd4,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run say 遭到了天谴
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd4] at @e[tag=!hy_zdy_zd4,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},tag=!hy_zdy_zd4] as @e[type=minecraft:arrow,tag=hy_zdy_zd4,distance=..3] run kill @s
#2-1q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_qmode=1..}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800,Tags:["hy_lightbj"]}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_qmode=1..}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:nether_star",Count:64b},Age:4800,PickupDelay:4800,Tags:["hy_lightbj"]}
execute at @a run spreadplayers ~ ~ 1 15 false @e[distance=..2,type=item,tag=hy_lightbj,nbt={Item:{id:"minecraft:nether_star"}}]
execute at @e[tag=hy_lightbj,type=item,nbt={Item:{id:"minecraft:nether_star"}}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_qmode=1..}] run say 天神降下了让一切都赎罪的雷罚
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=1,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#2-2
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd5,nbt={inGround:1b}] run summon tnt ~ ~ ~
kill @e[type=minecraft:arrow,tag=hy_zdy_zd5,nbt={inGround:1b}]
#2-2Q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] run summon minecraft:creeper ~ ~1 ~ {CustomName:'[{"text":"苦力怕号核弹头","color":"red"}]',ignited:1b,ExplosionRadius:100,Fuse:0,Tags:["hy_zdy_creeper"]}
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] run say 侦测到在途中核打击。
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=2,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#2-3
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3}] as @e[distance=..3,type=minecraft:arrow] run data modify entity @s Item set from entity @a[distance=..3,limit=1] Inventory[{Slot:-106b}]
replaceitem entity @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3}] weapon.offhand minecraft:fire_charge
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd6] run particle dragon_breath ~ ~ ~ 0.00001 0.00001 0.00001 0.1 10 normal
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd6] if entity @e[distance=..3,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},type=!minecraft:arrow] run say @e[distance=..3,type=!minecraft:arrow,tag=!hy_zdy_zd6,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}]尝试在龙息里洗澡。
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd6] run kill @e[distance=..3,type=!minecraft:arrow,tag=!hy_zdy_zd6,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}]
kill @e[type=minecraft:arrow,tag=hy_zdy_zd6,nbt={inGround:1b}]
#2-3q
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3,hy_zdy_qmode=1..}] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..10] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:fire keep
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode3"]}}},scores={hy_zdy_smode=2,hy_zdy_zd=3,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#3-1
replaceitem entity @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=1}] weapon.mainhand minecraft:crossbow{Tags:["hy_zdy","mode1"],Charged:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"strong_CBC",CustomPotionEffects:[{Duration:199980,Id:2,Amplifier:6}]}}],display:{Name:'[{"text":"诛仙始祖神弩","color":"gray","bold":true}]',Lore:['{"text":"总端源LV2","color":"gold"}','{"text":"注意·三源器所化","color":"red"}','{"text":"遭到总端创世神的封印","color":"green"}','{"text":"警告；封印轻微破损","color":"aqua"}']},Unbreakable:1b}
#3-2
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd8] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:command_block hollow
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd8] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run say 恭喜@a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3]获得了小黑屋一座。
execute at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},tag=!hy_zdy_zd8] as @e[type=minecraft:arrow,tag=hy_zdy_zd8,distance=..3] run kill @s
#3-3
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd9] as @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..2] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["hy_zdy_tp"],Invulnerable:1b,Invisible:1,ShowArms:1}
execute at @e[tag=hy_zdy_tp] run kill @e[type=minecraft:arrow,tag=hy_zdy_zd9,distance=..3]
execute at @e[tag=hy_zdy_tp] run tp @e[distance=..3] ~ ~ ~
#3-3q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_qmode=1..}] run kill @e[tag=hy_zdy_tp]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=3,hy_zdy_zd=3,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#4-1
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd10] run say @e[tag=!hy_zdy_zd10,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3]承受了过量的虚空力量
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd10] as @e[tag=!hy_zdy_zd10,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run kill @s
execute at @e[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},tag=!hy_zdy_zd10] as @e[type=minecraft:arrow,tag=hy_zdy_zd10,distance=..3] run kill @s
kill @e[type=minecraft:arrow,tag=hy_zdy_zd10,nbt={inGround:1b}]
#4-1q
execute as @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=1,hy_zdy_qmode=1..}] at @s positioned ~ ~1 ~ run tp ^ ^ ^4
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=1,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#4-2
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd11] if entity @a[distance=..3,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}] run gamerule keepInventory false
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd11] run kill @a[distance=..3,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}]
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd11] unless entity @a[distance=..3,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}] run gamerule keepInventory true
kill @e[type=minecraft:arrow,tag=hy_zdy_zd11,nbt={inGround:1b}]
#4-3
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd12] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run tag @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3,tag=!hy_zdy_zd12] add hy_zdy_bk
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd12] at @a[nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}},distance=..3] run say @a[tag=hy_zdy_bk]被世界之神标记了。
kill @e[tag=hy_zdy_bk]
kill @e[type=minecraft:arrow,tag=hy_zdy_zd12,nbt={inGround:1b}]
#4-3q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=3,hy_zdy_qmode=1..}] run tag @a[tag=hy_zdy_bk] remove hy_zdy_bk
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=4,hy_zdy_zd=3,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#5-1
execute at @e[tag=hy_zdy_zd13] run tp @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=5,hy_zdy_zd=1},distance=..5] ~ ~ ~
kill @e[type=minecraft:arrow,tag=hy_zdy_zd13,nbt={inGround:1b}]
#5-2
execute at @e[tag=hy_zdy_zd14] run tag @e[distance=..3,type=!minecraft:arrow,type=!minecraft:lightning_bolt,nbt=!{SelectedItem:{tag:{Tags:["mode1"]}}}] add zdldbj
kill @e[type=minecraft:arrow,tag=hy_zdy_zd14,nbt={inGround:1b}]
execute at @e[tag=zdldbj] unless entity @e[distance=..2,type=minecraft:lightning_bolt] run summon minecraft:lightning_bolt ~ ~ ~
#5-2q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=5,hy_zdy_zd=2,hy_zdy_qmode=1..}] run tag @e remove zdldbj
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=5,hy_zdy_zd=2,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#5-3
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd15] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air
#5-3q
execute at @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=5,hy_zdy_zd=3,hy_zdy_qmode=1..}] run kill @e[type=minecraft:arrow,tag=hy_zdy_zd15]
scoreboard players set @a[nbt={SelectedItem:{tag:{Tags:["mode1"]}}},scores={hy_zdy_smode=5,hy_zdy_zd=3,hy_zdy_qmode=1..}] hy_zdy_qmode 0
#6-1
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd16] run summon minecraft:tnt ~ ~ ~
kill @e[type=minecraft:arrow,tag=hy_zdy_zd16,nbt={inGround:1b}]
#6-2
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd17] run summon minecraft:falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1}
kill @e[type=minecraft:arrow,tag=hy_zdy_zd17,nbt={inGround:1b}]
#6-3
execute at @e[type=minecraft:arrow,tag=hy_zdy_zd18] run summon minecraft:falling_block ~ ~-1 ~ {BlockState:{Name:"minecraft:glowstone"},Time:1}
kill @e[type=minecraft:arrow,tag=hy_zdy_zd18,nbt={inGround:1b}]