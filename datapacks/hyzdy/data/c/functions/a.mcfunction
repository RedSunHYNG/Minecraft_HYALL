scoreboard objectives add hy_zdy_r2 minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add hy_zdy_r1 minecraft.used:minecraft.crossbow
scoreboard objectives add hy_zdy_q2 minecraft.dropped:minecraft.diamond_pickaxe
scoreboard objectives add hy_zdy_q1 minecraft.dropped:minecraft.crossbow
scoreboard objectives add hy_zdy_qmode dummy 
#子弹计算
scoreboard objectives add hy_zdy_zd dummy
#误触计算
scoreboard objectives add hy_zdy_smb trigger
#模式设置
scoreboard objectives add hy_zdy_smode trigger
#误触计算
scoreboard objectives add hy_zdy_ts dummy  
#发言断触
scoreboard objectives add hy_zdy_ts1 dummy
scoreboard players set @a hy_zdy_r2 0
scoreboard players set @a hy_zdy_r1 0
scoreboard players set @a hy_zdy_q2 0
scoreboard players set @a hy_zdy_q1 0
scoreboard players set @a hy_zdy_qmode 0
scoreboard players set @a hy_zdy_zd 0
scoreboard players set @a hy_zdy_smb 0
scoreboard players set @a hy_zdy_smode 0
scoreboard players set @a hy_zdy_ts 0
scoreboard players set @a hy_zdy_ts1 0
scoreboard players set @a hy_zdy_dt 0
scoreboard players set @a hy_zdy_ksbh 0
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
scoreboard objectives add hy_zdy_timeq dummy
scoreboard objectives add hy_zdy_times dummy
scoreboard players set @a hy_zdy_times 0
scoreboard players set @a hy_zdy_timeq 0
say 总端源武器数据包已加载！