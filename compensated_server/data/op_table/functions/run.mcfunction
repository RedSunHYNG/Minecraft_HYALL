execute unless entity @e[type=minecraft:armor_stand,tag=mianstart] run summon minecraft:armor_stand -1 250 5 {Tags:["mianstart"]}

execute if entity @e[tag=start1,tag=mianstart] run function main:ticks
execute if entity @e[tag=start2,tag=mianstart] run function main:boss
execute if entity @e[tag=start3,tag=mianstart] run function main:other_inven
execute if entity @e[tag=start4,tag=mianstart] run function revive:revives
execute unless entity @e[tag=start4,tag=mianstart] run function revive:norevives
execute if entity @e[tag=ookon,tag=mianstart] run function ook:tick_s
execute if entity @e[tag=tpon,tag=mianstart] run function tp:f
execute if entity @e[tag=newset,tag=mianstart] run function ns:b
execute if entity @e[tag=srmc,tag=mianstart] run function sr:mc
execute if entity @e[tag=lev,tag=mianstart] run function level:le

#激活op的权限
scoreboard players enable @a[tag=op_se] op_table
#可视化选项
execute as @a if entity @s[tag=op_se,scores={op_table=1}] run function op_table:notebook
execute as @a if entity @s[tag=op_se,scores={op_table=2}] run function op_table:say_a
execute as @a if entity @s[tag=op_se,scores={op_table=3}] run function op_table:say_b
execute as @a if entity @s[tag=op_se] unless entity @s[scores={op_table=0}] run scoreboard players set @a[tag=op_se] op_table 0

#加人刷新机制
execute if entity @a[tag=!nsplayer] run function op_table:load
tag @a[tag=!nsplayer] add nsplayer

#重生固定值
##递阶熵deadCount=2 // deadCount 2
execute unless entity @e[scores={deadCount=2}] run scoreboard players set @e[tag=mianstart] deadCount 2
#
#枪械伤害平衡
#effect give @a[scores={mode_time=6000..}] minecraft:weakness 300 0
#scoreboard players set @a[scores={mode_time=6001..}] mode_time 0