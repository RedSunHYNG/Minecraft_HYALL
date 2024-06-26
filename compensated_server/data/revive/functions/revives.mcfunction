
#复活 time_strike_1

#tag @a[scores={dead_fh=1}] add revives_dead
#gamemode spectator @a[scores={dead_fh=1}]
#gamemode spectator @a[tag=revives_dead,gamemode=survival]

#触发器
#execute if entity @a[scores={dead_fh=1..}] run 
scoreboard players operation @a[scores={dead_fh=1..}] dead_revives = @a[scores={dead_fh=1..},limit=1] dead_fhs
scoreboard players operation @a[scores={dead_fh=1..}] dead_revives /= @e[tag=mianstart,limit=1] deadCount
tell @a[scores={dead_revives=1..,dead_fh=1..}] 多次站立在灵魂篝火上方减去自身罪孽到零方可来世...
scoreboard players set @a[scores={dead_fh=1..}] dead_fh 0



#触发
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~-1 ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1
execute as @a[gamemode=spectator,scores={dead_revives=1..}] at @s if block ~ ~1 ~ minecraft:soul_campfire run scoreboard players set @s time_strike_1 1

#救助复活
scoreboard players add @a[scores={time_strike_1=1..}] time_strike_1 1
execute as @a[scores={time_strike_1=2}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:soul_campfire
#tag @a[scores={time_strike_1=3}] remove revives_dead
#gamemode survival @a[scores={time_strike_1=4}]
scoreboard players remove @a[scores={time_strike_1=3,dead_revives=1..}] dead_revives 1 
tell @a[scores={time_strike_1=4}] 罪孽减一...
scoreboard players set @a[scores={time_strike_1=5..}] time_strike_1 0

#超时复活
#11800
scoreboard players add @a[gamemode=spectator,scores={dead_revives=1..}] revives_time 1
tell @a[scores={revives_time=5900}] 即将超时复活.
#2
#gamemode survival @a[scores={revives_time=12000},tag=revives_dead]
scoreboard players set @a[scores={revives_time=6000}] dead_revives 0
#tag @a[scores={revives_time=12000}] remove revives_dead
#2

scoreboard players set @a[scores={dead_revives=0,revives_time=1..}] revives_time 0
gamemode spectator @a[scores={dead_revives=1..},gamemode=survival]
gamemode survival @a[scores={dead_revives=0},gamemode=spectator]