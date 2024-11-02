forceload add -10 -10 10 10
gamerule commandBlockOutput false


scoreboard objectives add timetable dummy
scoreboard objectives add timer dummy
scoreboard objectives add time_strike_1 dummy
scoreboard objectives add time_strike_2 dummy

scoreboard objectives add helptime dummy
scoreboard objectives add qysj_dead_fh deathCount

fill 10 249 10 -10 248 -10 minecraft:bedrock
fill 10 250 10 -10 255 -10 minecraft:air
#boss
scoreboard objectives add time_boss dummy
scoreboard objectives add qysj_boss dummy
scoreboard objectives add bossskill dummy
#tell
say 开启作弊并输入/tag @s add start 打开游戏
say 请支持红阳正版
say 1.19-1.18.2__V1.1数据包版