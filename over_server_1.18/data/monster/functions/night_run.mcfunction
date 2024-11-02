#力量1 ,迅捷1
effect give @e[tag=byt,type=!minecraft:creeper] minecraft:strength 1 0
effect give @e[tag=byt,type=!minecraft:creeper] minecraft:speed 1 0
#钻石不掉落
data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=random] Item set value {id:"minecraft:diamond_ore",Count:1b}
#爆炸鸡蛋/落地的鸡蛋会爆炸
#execute at @e[type=minecraft:egg] unless block ~ ~-1 ~ minecraft:air run summon minecraft:creeper ~ ~ ~ {Fuse:0,CustomName:'{"text":"爆炸鸡蛋"}'}
#execute as @e[type=minecraft:egg] at @s unless block ~ ~-1 ~ minecraft:air run kill @s
execute as @e[type=minecraft:chicken,tag=byt] at @s run scoreboard players add @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:egg"}},distance=..2] monster_time 1
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:egg"}}] at @s unless entity @e[type=minecraft:chicken,distance=..2,tag=byt] run scoreboard players set @s monster_time 0
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:egg"}},scores={monster_time=100..}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,CustomName:'{"text":"爆炸鸡蛋"}'}
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}},scores={monster_time=100..}] at @s run kill @s
##中立生物始终仇视
#狼
execute as @e[type=minecraft:wolf,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#铁傀儡
execute as @e[type=minecraft:iron_golem,tag=!tst,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#僵尸猪人
execute as @e[type=minecraft:zombified_piglin,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#末影人
execute as @e[type=minecraft:enderman,tag=byt] at @s run data modify entity @s AngryAt set from entity @p UUID
#鱿鱼喷墨
execute at @e[type=minecraft:squid,tag=byt] run effect give @a[distance=..4] blindness 2 0
#猪会爆炸
execute at @e[type=minecraft:pig,tag=byt] run execute at @a[distance=..2] run summon minecraft:creeper ~ ~1 ~ {Tags:["tst","zht"],Fuse:0,CustomName:'{"text":"炸弹猪"}'}
#牛会击飞
execute as @a[nbt={OnGround:1b}] at @s if entity @e[type=minecraft:cow,tag=byt,nbt=!{Health:10f},distance=..2] run tp @s ~ ~10 ~
#脆弱的耕地
execute as @a at @s if block ~ ~-1 ~ minecraft:farmland run scoreboard players add @s monster_solotime1 1
execute as @a at @s if block ~ ~ ~ minecraft:farmland run scoreboard players add @s monster_solotime1 1
execute as @a at @s unless block ~ ~ ~ minecraft:farmland unless block ~ ~-1 ~ minecraft:farmland run scoreboard players set @s monster_solotime1 0
execute as @a[scores={monster_solotime1=60..}] at @s if block ~ ~-1 ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
execute as @a[scores={monster_solotime1=60..}] at @s if block ~ ~ ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
execute as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:villager] at @s if block ~ ~-1 ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
execute as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:villager] at @s if block ~ ~ ~ minecraft:farmland run fill ~ ~ ~ ~ ~-1 ~ dirt replace farmland
#村民的天谴
execute at @a if entity @e[type=minecraft:villager,tag=!tst,tag=byt,nbt=!{Health:20f},distance=..2] run summon lightning_bolt ~ ~ ~
