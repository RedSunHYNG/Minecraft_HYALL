#枪械伤害平衡
scoreboard players add @a mode_time 1
effect give @a[scores={mode_time=6000..}] minecraft:weakness 300 0
scoreboard players set @a[scores={mode_time=6001..}] mode_time 0