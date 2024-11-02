effect give @a[scores={hy_ook=1..,hy_ook_use1=1..}] minecraft:hunger 2 2
effect give @a[scores={hy_ook=1..,hy_ook_use2=1..}] minecraft:hunger 2 2

#1
kill @e[tag=hy_ook_1,type=armor_stand,scores={hy_ook_time=5..}]
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] hy_ook_use1 0



#2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}},scores={hy_ook=1..,hy_ook_use2=1..}] hy_ook_use2 0
execute as @e[tag=hy_ook_2] at @s if block ~ ~1 ~ #logs run tp @s ~ ~1 ~
execute as @e[tag=hy_ook_2] at @s unless block ~ ~1 ~ #logs unless block ~ ~ ~ #logs run kill @s

