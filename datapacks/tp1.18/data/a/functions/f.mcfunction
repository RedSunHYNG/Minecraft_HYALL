execute if entity @a[tag=tp_on] run function a:p
execute if entity @a[tag=!tp_online] run scoreboard players set @a tp_table 0 
tag @a[tag=!tp_online] add tp_online
scoreboard players enable @a[scores={tp_table=0..}] tp_table
#传送等待时间
scoreboard players add @a[scores={tp_table=1..,tp_time2=..100}] tp_time2 1
#发言触发时间
scoreboard players add @a[scores={tp_table=0,tp_time=..60,say_times=0},x_rotation=-90] tp_time 1
#发言触发时间归零
scoreboard players set @a[x_rotation=-89..90] tp_time 0
#发言次数计算
scoreboard players set @a[x_rotation=-89..90] say_times 0
#触发超时归零
scoreboard players set @a[scores={tp_table=1..,tp_time2=60..}] tp_table 0