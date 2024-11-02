#刺客僵尸
execute as @e[type=minecraft:zombie,tag=type1,tag=byt,nbt=!{CanBreakDoors:1b}] run data merge entity @s {CanBreakDoors:1b}
execute as @e[type=minecraft:zombie,tag=type1,tag=byt] at @s positioned ^ ^ ^4 if entity @a[distance=..2] run tp @s @p
#胖子僵尸
data merge entity @e[type=minecraft:zombie,tag=type2,tag=byt,limit=1,sort=random,nbt={IsBaby:1b}] {IsBaby:0b}
attribute @e[type=minecraft:zombie,tag=type2,tag=byt,limit=1,sort=random,nbt=!{Attributes:[{Base:20d,Name:"minecraft:generic.armor"}]}] minecraft:generic.armor base set 20
attribute @e[type=minecraft:zombie,tag=type2,tag=byt,limit=1,sort=random,nbt=!{Attributes:[{Base:100d,Name:"minecraft:generic.max_health"}]}] minecraft:generic.max_health base set 100
effect give @e[type=minecraft:zombie,tag=type2,tag=byt] minecraft:fire_resistance 2 0
effect give @e[type=minecraft:zombie,tag=type2,tag=byt] minecraft:weakness 2 0
#克隆法师
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3] run summon zombie ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["tst"]}
execute as @e[type=minecraft:zombie,tag=type3] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3] run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3]
attribute @e[type=minecraft:zombie,tag=type3,limit=1,sort=random] minecraft:zombie.spawn_reinforcements base set 300
#尸壳:放火
execute at @e[type=minecraft:husk,tag=byt] run execute at @a[distance=..2] run setblock ~ ~ ~ minecraft:fire keep
effect give @e[type=minecraft:husk,tag=byt] minecraft:fire_resistance 2 0
#溺尸铺冰
execute as @e[type=minecraft:drowned] at @s at @p[distance=..3] run setblock ~ ~1 ~ minecraft:powder_snow

#药水骷髅
execute if entity @e[tag=monster_time1,scores={monster_type=1..3}] run item replace entity @e[type=minecraft:skeleton,tag=type1,nbt=!{HandItems:[{},{id:"minecraft:tipped_arrow"}]}] weapon.offhand with minecraft:tipped_arrow{Potion:"minecraft:strong_poison"}
execute if entity @e[tag=monster_time1,scores={monster_type=4..6}] run item replace entity @e[type=minecraft:skeleton,tag=type1,nbt=!{HandItems:[{},{id:"minecraft:tipped_arrow"}]}] weapon.offhand with minecraft:tipped_arrow{Potion:"minecraft:long_poison"}
execute if entity @e[tag=monster_time1,scores={monster_type=7..9}] run item replace entity @e[type=minecraft:skeleton,tag=type1,nbt=!{HandItems:[{},{id:"minecraft:tipped_arrow"}]}] weapon.offhand with minecraft:tipped_arrow{Potion:"minecraft:harming"}

#近防骷髅
execute as @e[type=minecraft:skeleton,tag=type2,nbt={HandItems:[{id:"minecraft:bow"},{}]}] at @s if entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:stone_sword 1
execute as @e[type=minecraft:skeleton,tag=type2,nbt={HandItems:[{id:"minecraft:stone_sword"},{}]}] at @s unless entity @a[distance=..4] run item replace entity @s weapon.mainhand with minecraft:bow 1
effect give @e[type=minecraft:skeleton,tag=type2] minecraft:strength 10 2
#唤魔骷髅
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:bone"}}] run summon skeleton ~ ~ ~ {CustomName: '{"text":"复生体"}',Tags:["tst"]}
execute as @e[type=minecraft:skeleton,tag=type3] at @s if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:bone"}}] run kill @e[distance=..4,type=item,nbt={Item:{id:"minecraft:bone"}}]
#蝙蝠骑士
execute at @e[tag=!tst_bfqs,type=minecraft:bat] run summon minecraft:bat ~ ~ ~ {Passengers:[{id:"skeleton",Tags:["tst_bfqs","byt"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}],Tags:["tst_bfqs","byt"]}
execute at @e[tag=tst_bfqs] run kill @e[distance=..5,type=minecraft:bat,tag=!tst_bfqs]
#狙击手-骷髅隐身
item replace entity @e[type=minecraft:skeleton,tag=type4] armor.head with minecraft:acacia_leaves
effect give @e[type=minecraft:skeleton,tag=type4] minecraft:invisibility 2 0

#史莱姆：压人
execute as @a at @s if entity @e[distance=..2,type=minecraft:slime,tag=type1] run tp @s ~ ~-1 ~
#史莱姆:毒液史莱姆
execute as @e[type=minecraft:slime,tag=type2] at @s run effect give @a[distance=..2] minecraft:poison 2 0


#幻翼轰炸机
execute at @a at @e[distance=..15,type=minecraft:phantom] unless entity @e[tag=zht,type=minecraft:creeper,distance=..50] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst","zht"],Health:100f,Fuse:10,Attributes:[{Name:"generic.max_health",Base:100d},{Base: 0.5d, Name: "minecraft:generic.movement_speed"}],CustomName:'{"text":"巡航追踪炸弹"}'}
#野猪摧毁物品
execute as @e[type=minecraft:hoglin] at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:air
#大炮恶魂-烈焰弹会爆炸tnt
execute as @e[type=minecraft:fireball] at @s if entity @a[distance=..1] run summon minecraft:tnt ~ ~ ~
#末影龙
execute as @e[type=minecraft:ender_dragon] at @s positioned ~ ~-3 ~ if entity @a[distance=..2] run tp @p ~ ~ ~
#杀人兔
execute as @e[type=minecraft:rabbit,tag=byt,nbt=!{RabbitType:99}] run data merge entity @s {RabbitType:99}
effect give @e[type=minecraft:rabbit,tag=byt] minecraft:jump_boost 2 0
effect give @e[type=minecraft:rabbit,tag=byt] minecraft:speed 2 0
#蜘蛛生网
execute at @e[type=minecraft:spider,tag=byt] run execute at @a[distance=..3] run setblock ~ ~ ~ minecraft:cobweb
#灾厄村民驽箭手
item replace entity @e[type=minecraft:pillager,tag=!zht,tag=byt,nbt=!{HandItems:[{id: "minecraft:crossbow",tag:{Charged: 1b}},{}]}] weapon.mainhand with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:3b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:0b,Colors:[I;15790320]},{Type:0b,Colors:[I;15790320]},{Type:0b,Colors:[I;15790320]}]}}}],Damage:0,Charged:1b}
#女巫牧师
execute at @e[type=minecraft:witch,tag=byt] run effect give @e[distance=..5,type=minecraft:zombie] instant_damage 2 0
execute at @e[type=minecraft:witch,tag=byt] run effect give @e[distance=..5,type=minecraft:skeleton] instant_damage 2 0
#不详黑渊
execute as @e[type=minecraft:enderman,tag=byt] at @s run effect give @e[distance=1..25,type=!player,tag=byt] minecraft:strength 2 1
execute as @e[type=minecraft:enderman,tag=byt] at @s run effect give @e[distance=1..25,type=!player,tag=byt] minecraft:speed 2 1