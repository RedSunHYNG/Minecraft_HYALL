execute unless entity @e[type=minecraft:armor_stand,tag=level_run] run summon minecraft:armor_stand -1 250 0 {Tags:["tst","level_run"]}
execute unless entity @e[type=minecraft:armor_stand,tag=level_run,scores={levelCount=4}] run scoreboard players set @e[type=minecraft:armor_stand,tag=level_run] levelCount 4

scoreboard players add @e[type=minecraft:armor_stand,tag=level_run] levelTime 1
execute if entity @e[type=minecraft:armor_stand,tag=level_run,scores={levelTime=99}] run function level:level_effect
scoreboard players set @e[type=minecraft:armor_stand,tag=level_run,scores={levelTime=100..}] levelTime 0
scoreboard players add @a levelTime 1
execute as @a[scores={levelTime=39}] at @s run function level:level_math
scoreboard players enable @a level_hastes
scoreboard players enable @a level_speeds
scoreboard players enable @a level_regenerations
scoreboard players enable @a level_strengths
scoreboard players enable @a level_healths
scoreboard players enable @a level_resistances
scoreboard players enable @a level_jumps
scoreboard players enable @a level_saturations
execute as @a[scores={level_hastes=1..}] at @s run function level:level_mode
execute as @a[scores={level_speeds=1..}] at @s run function level:level_mode
execute as @a[scores={level_regenerations=1..}] at @s run function level:level_mode
execute as @a[scores={level_strengths=1..}] at @s run function level:level_mode
execute as @a[scores={level_healths=1..}] at @s run function level:level_mode
execute as @a[scores={level_resistances=1..}] at @s run function level:level_mode
execute as @a[scores={level_jumps=1..}] at @s run function level:level_mode
execute as @a[scores={level_saturations=1..}] at @s run function level:level_mode


#发言触发时间-发言触发时间归零
scoreboard players add @a[scores={level_time=..60},x_rotation=90] level_time 1
scoreboard players set @a[x_rotation=-90..89] level_time 0
scoreboard players set @a[scores={level_time=0}] level_sneak 0

scoreboard players enable @a level_says
tellraw @a[scores={level_time=60,level_sneak=1..},x_rotation=90] [{"text":"属性选择面板","color":"red","hoverEvent": {"action": "show_text","contents":{"text":"以你现在处于的等级除4换算过来就是你现在拥有的点数","color":"green"}}},{"text":"手部速度","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_hastes set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"脚步速度","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_speeds set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"生命恢复","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_regenerations set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"力量","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_strengths set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"血量提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_healths set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"抗性提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_resistances set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"跳跃提升","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_jumps set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"饱和","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_saturations set 5"},"hoverEvent": {"action": "show_text","contents":{"text":"点击升级","color":"red"}}},{"text":"--","color":"red"},{"text":"当前属性面板","color":"green","clickEvent":{"action":"run_command","value":"/trigger level_says set 1"},"hoverEvent": {"action": "show_text","contents":{"text":"点击打开当前属性分配情况","color":"red"}}}]

tellraw @a[scores={level_says=1..}] [{"text":"当前属性面板:","color":"red","hoverEvent": {"action": "show_text","contents":{"text":"没有显示则代表没有分配到属性,属性达到一定值才会产生或升级","color":"green"}}},{"text":"手部速度:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,2点=等级2,3点=等级3,5点=等级4,10点=等级5","color":"red"}}},{"score":{"name":"*","objective":"level_haste"}},{"text":"脚步速度:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,2点=等级2,3点=等级3,5点=等级4,10点=等级5","color":"red"}}},{"score":{"name":"*","objective":"level_speed"}},{"text":"生命恢复:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,3点=等级2,7点=等级3","color":"red"}}},{"score":{"name":"*","objective":"level_regeneration"}},{"text":"攻击提升:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,3点=等级2,10点=等级3,20点=等级4,30点=等级5","color":"red"}}},{"score":{"name":"*","objective":"level_strength"}},{"text":"血量提升:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,2点=等级2,3点=等级3,4点=等级4,5点=等级5","color":"red"}}},{"score":{"name":"*","objective":"level_health"}},{"text":"防御提升:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,4点=等级2,7点=等级3,10点=等级4","color":"red"}}},{"score":{"name":"*","objective":"level_resistance"}},{"text":"跳跃提升:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"1点=等级1,2点=等级2,3点=等级3,5点=等级4,10点=等级5","color":"red"}}},{"score":{"name":"*","objective":"level_jump"}},{"text":"饱和:","color":"green","hoverEvent": {"action": "show_text","contents":{"text":"5点=等级1","color":"red"}}},{"score":{"name":"*","objective":"level_saturation"}}]
scoreboard players set @a[scores={level_says=1..}] level_says 0