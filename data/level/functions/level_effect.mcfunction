#急速挖掘*1
tell @a[scores={level_haste=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_haste=11..}] level_haste 10
execute as @a[scores={level_speed=10},nbt=!{Attributes:[{Base:9d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 9
execute as @a[scores={level_speed=5..9},nbt=!{Attributes:[{Base:8d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 8
execute as @a[scores={level_speed=3..4},nbt=!{Attributes:[{Base:7d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 7
execute as @a[scores={level_speed=2},nbt=!{Attributes:[{Base:6d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 6
execute as @a[scores={level_speed=1},nbt=!{Attributes:[{Base:5d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 5
execute as @a[scores={level_speed=0},nbt=!{Attributes:[{Base:4d,Name:"minecraft:generic.attack_speed"}]}] run attribute @s minecraft:generic.attack_speed base set 4
#速度*1
tell @a[scores={level_speed=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_speed=11..}] level_speed 10
execute as @a[scores={level_speed=10},nbt=!{Attributes:[{Base:0.22d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.22
execute as @a[scores={level_speed=5..9},nbt=!{Attributes:[{Base:0.20d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.20
execute as @a[scores={level_speed=3..4},nbt=!{Attributes:[{Base:0.18d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.18
execute as @a[scores={level_speed=2},nbt=!{Attributes:[{Base:0.16d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.16
execute as @a[scores={level_speed=1},nbt=!{Attributes:[{Base:0.13d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.13
execute as @a[scores={level_speed=0},nbt=!{Attributes:[{Base:0.1d,Name:"minecraft:generic.movement_speed"}]}] run attribute @s minecraft:generic.movement_speed base set 0.1

#再生*1
tell @a[scores={level_regeneration=8..}] 此属性已达到极限
scoreboard players set @a[scores={level_regeneration=8..}] level_regeneration 7
effect give @a[scores={level_regeneration=7}] minecraft:regeneration 5 2
effect give @a[scores={level_regeneration=3..6}] minecraft:regeneration 5 1
effect give @a[scores={level_regeneration=1}] minecraft:regeneration 5 0

#近战攻击伤害
tell @a[scores={level_strength=31..}] 此属性已达到极限
scoreboard players set @a[scores={level_strength=31..}] level_strength 30
execute as @a[scores={level_strength=30},nbt=!{Attributes:[{Base:6d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 6
execute as @a[scores={level_strength=20..29},nbt=!{Attributes:[{Base:5d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 5
execute as @a[scores={level_strength=10..19},nbt=!{Attributes:[{Base:4d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 4
execute as @a[scores={level_strength=3..9},nbt=!{Attributes:[{Base:3d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 3
execute as @a[scores={level_strength=1..2},nbt=!{Attributes:[{Base:2d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 2
execute as @a[scores={level_strength=0},nbt=!{Attributes:[{Base:1d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 1

#血量*1
tell @a[scores={level_health=6..}] 此属性已达到极限
scoreboard players set @a[scores={level_health=6..}] level_health 5
execute as @a[scores={level_health=5},nbt=!{Attributes:[{Base:40d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 40
execute as @a[scores={level_health=4},nbt=!{Attributes:[{Base:36d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={level_health=3},nbt=!{Attributes:[{Base:32d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={level_health=2},nbt=!{Attributes:[{Base:28d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={level_health=1},nbt=!{Attributes:[{Base:24d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={level_health=0},nbt=!{Attributes:[{Base:20d,Name:"minecraft:generic.max_health"}]}] run attribute @s minecraft:generic.max_health base set 20
#防御值
tell @a[scores={level_resistance=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_resistance=11..}] level_resistance 10
execute as @a[scores={level_resistance=10},nbt=!{Attributes:[{Base:9d,Name:"minecraft:generic.armor"}]}] run attribute @s minecraft:generic.armor base set 9
execute as @a[scores={level_resistance=7..9},nbt=!{Attributes:[{Base:6.5d,Name:"minecraft:generic.armor"}]}] run attribute @s minecraft:generic.armor base set 6.5
execute as @a[scores={level_resistance=4..6},nbt=!{Attributes:[{Base:4d,Name:"minecraft:generic.armor"}]}] run attribute @s minecraft:generic.armor base set 4
execute as @a[scores={level_resistance=1..3},nbt=!{Attributes:[{Base:2d,Name:"minecraft:generic.armor"}]}] run attribute @s minecraft:generic.armor base set 2
execute as @a[scores={level_resistance=0},nbt=!{Attributes:[{Base:0d,Name:"minecraft:generic.armor"}]}] run attribute @s minecraft:generic.armor base set 0
#跳跃提升*1
tell @a[scores={level_jump=11..}] 此属性已达到极限
scoreboard players set @a[scores={level_jump=11..}] level_jump 10
effect give @a[scores={level_jump=10}] minecraft:jump_boost 5 4
effect give @a[scores={level_jump=5..9}] minecraft:jump_boost 5 3
effect give @a[scores={level_jump=3..4}] minecraft:jump_boost 5 2
effect give @a[scores={level_jump=2}] minecraft:jump_boost 5 1
effect give @a[scores={level_jump=1}] minecraft:jump_boost 5 0
#饱和*5
tell @a[scores={level_saturation=6..}] 此属性已达到极限
scoreboard players set @a[scores={level_saturation=6..}] level_saturation 5
effect give @a[scores={level_saturation=5}] minecraft:saturation 5 0