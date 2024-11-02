#面板选项触发
scoreboard objectives add tp_table trigger
#触发时间
scoreboard objectives add tp_time dummy
#传送等待
scoreboard objectives add tp_time2 dummy
#发言面板限制
scoreboard objectives add say_times dummy
#死亡计算
scoreboard objectives add tp_dead deathCount
gamerule commandBlockOutput false
say 红阳1.18整合包专用传送数据包已加载。
say 单房主存档开启作弊输入/tag @p add tp_on启动
say 单房主存档开启作弊输入/tag @p remove tp_on关闭
say 将头抬高至最上方触发发言面板，点击进行执行。