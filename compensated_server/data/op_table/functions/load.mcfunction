
#---main怪物世界
#1.19-1.18.2__V1.2整合包模块专版
#可视化背包选择，可视化了特殊boss加成，启动方式更改为盔甲架
forceload add -10 -10 10 10
gamerule commandBlockOutput false
scoreboard objectives add timetable dummy
scoreboard objectives add timer dummy
scoreboard players set @e timer 0
scoreboard objectives add time_strike_2 dummy
scoreboard players set @e time_strike_2 0
scoreboard objectives add qysj_dead_fh deathCount
scoreboard objectives add helptime dummy
scoreboard players set @e helptime 0



scoreboard objectives add nm_time dummy
scoreboard players set @e nm_time 0
scoreboard objectives add mode_time dummy
scoreboard players set @e mode_time 0

fill 10 249 10 -10 248 -10 minecraft:bedrock
fill 10 250 10 -10 255 -10 minecraft:air
#boss
scoreboard objectives add time_boss dummy
scoreboard players set @e time_boss 0
scoreboard objectives add qysj_boss dummy
scoreboard players set @e qysj_boss 0
scoreboard objectives add bossskill dummy
scoreboard players set @e bossskill 0
#设置op_table积分版
scoreboard objectives add op_table trigger
#tell
#op_table：控制面板积分 op_se：权限标签

#---传送系统
#面板选项触发
scoreboard objectives add tp_table trigger
scoreboard players set @a tp_table 0
#触发时间
scoreboard objectives add tp_time dummy
scoreboard players set @a tp_time 0
#传送等待
scoreboard objectives add tp_time2 dummy
scoreboard players set @a tp_time 0
#发言面板限制
scoreboard objectives add say_times dummy
scoreboard players set @a say_times 0
#死亡计算
scoreboard objectives add tp_dead deathCount
gamerule commandBlockOutput false

#--ook
scoreboard objectives add hy_ook minecraft.custom:minecraft.sneak_time
scoreboard objectives add hy_ook_use2 minecraft.used:minecraft.iron_axe
scoreboard objectives add hy_ook_use1 minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add hy_ook_time dummy

#--newset
scoreboard objectives add nsplayer_time dummy
scoreboard players set @a nsplayer_time 0
scoreboard objectives add nsplayer_time2 dummy
scoreboard players set @a nsplayer_time2 0
scoreboard objectives add nsplayer_use1 trigger
scoreboard objectives add nsplayer_use2 trigger
scoreboard objectives add nsplayer_use3 trigger
scoreboard objectives add nsplayer_use4 trigger
scoreboard objectives add nsplayer_use5 trigger
gamerule commandBlockOutput false


#le
#同时绑定sr
scoreboard objectives add level level

#sr
scoreboard objectives add sr_steam trigger
scoreboard players set @a sr_steam 0
scoreboard objectives add sr_time dummy
scoreboard players set @a sr_time 0
scoreboard objectives add sr_type dummy
scoreboard players set @a sr_type 0
scoreboard objectives add srwq_sjbh_use minecraft.used:golden_pickaxe
scoreboard objectives add srwq_boombow_use minecraft.used:bow

#revives_time
scoreboard objectives add deadCount dummy
scoreboard objectives add time_strike_1 dummy
##触发器
scoreboard objectives add dead_fh deathCount
##记录值
scoreboard objectives add dead_fhs deathCount
##罪孽值
scoreboard objectives add dead_revives deathCount
scoreboard players set @e time_strike_1 0
scoreboard objectives add revives_time dummy


#
say 1.18补偿包3.0版本
say 开启作弊并输入/tag @s add op_se 给予自己控制权限
say 请支持红阳正版
say /trigger op_table set 1 打开说明书
say /trigger op_table set 2 打开调试面板1
say /trigger op_table set 2 打开调试面板2
say 在调试面板开启功能时请先阅读说明书

#积分清零
