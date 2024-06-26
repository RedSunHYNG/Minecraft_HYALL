#随机刻
execute unless entity @e[type=armor_stand,tag=bossskill_a] run summon minecraft:armor_stand -1 250 0 {Tags:["bossskill_a"]}
execute unless entity @e[type=armor_stand,tag=bossskill_b] run summon minecraft:armor_stand -1 250 1 {Tags:["bossskill_b"]}
execute unless entity @e[type=armor_stand,tag=bossskill_c] run summon minecraft:armor_stand -1 250 2 {Tags:["bossskill_c"]}
execute if entity @e[tag=timetable_2,scores={timetable=8}] run setblock 0 250 0 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_1"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_2"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_3"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_4"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["time_5"]}}]}
execute if entity @e[tag=timetable_2,scores={timetable=9}] run setblock 0 250 1 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss1_1"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss1_2"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss1_3"]}}]}
execute if entity @e[tag=timetable_2,scores={timetable=10}] run setblock 0 250 2 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_1"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_2"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_3"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_4"]}},{Slot:4b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_5"]}},{Slot:5b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss2_6"]}}]}
execute if entity @e[tag=timetable_2,scores={timetable=11}] run setblock 0 250 3 minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:0b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss3_1"]}},{Slot:1b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss3_2"]}},{Slot:2b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss3_3"]}},{Slot:3b,id:"minecraft:paper",Count:1b,tag:{Tags:["boss3_4"]}}]}
execute if entity @e[tag=timetable_2,scores={timetable=20}] run fill 0 249 0 0 249 3 minecraft:redstone_block
execute if entity @e[tag=timetable_2,scores={timetable=30}] run fill 0 249 0 0 250 3 minecraft:air
execute if entity @e[tag=timetable_2,scores={timetable=41}] if entity @e[nbt={Item:{tag:{Tags:["time_1"]}}}] run scoreboard players add @e[tag=timer] timer 1
execute if entity @e[tag=timetable_2,scores={timetable=42}] if entity @e[nbt={Item:{tag:{Tags:["time_2"]}}}] run scoreboard players add @e[tag=timer] timer 2
execute if entity @e[tag=timetable_2,scores={timetable=43}] if entity @e[nbt={Item:{tag:{Tags:["time_3"]}}}] run scoreboard players add @e[tag=timer] timer 3
execute if entity @e[tag=timetable_2,scores={timetable=44}] if entity @e[nbt={Item:{tag:{Tags:["time_4"]}}}] run scoreboard players add @e[tag=timer] timer 4
execute if entity @e[tag=timetable_2,scores={timetable=45}] if entity @e[nbt={Item:{tag:{Tags:["time_5"]}}}] run scoreboard players add @e[tag=timer] timer 5
execute if entity @e[tag=timetable_2,scores={timetable=46}] if entity @e[nbt={Item:{tag:{Tags:["boss1_1"]}}}] run scoreboard players set @e[tag=bossskill_a] bossskill 1
execute if entity @e[tag=timetable_2,scores={timetable=47}] if entity @e[nbt={Item:{tag:{Tags:["boss1_2"]}}}] run scoreboard players set @e[tag=bossskill_a] bossskill 2
execute if entity @e[tag=timetable_2,scores={timetable=48}] if entity @e[nbt={Item:{tag:{Tags:["boss1_3"]}}}] run scoreboard players set @e[tag=bossskill_a] bossskill 3
execute if entity @e[tag=timetable_2,scores={timetable=49}] if entity @e[nbt={Item:{tag:{Tags:["boss2_1"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 1
execute if entity @e[tag=timetable_2,scores={timetable=50}] if entity @e[nbt={Item:{tag:{Tags:["boss2_2"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 2
execute if entity @e[tag=timetable_2,scores={timetable=51}] if entity @e[nbt={Item:{tag:{Tags:["boss2_3"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 3
execute if entity @e[tag=timetable_2,scores={timetable=52}] if entity @e[nbt={Item:{tag:{Tags:["boss2_4"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 4
execute if entity @e[tag=timetable_2,scores={timetable=53}] if entity @e[nbt={Item:{tag:{Tags:["boss2_5"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 5
execute if entity @e[tag=timetable_2,scores={timetable=54}] if entity @e[nbt={Item:{tag:{Tags:["boss2_6"]}}}] run scoreboard players set @e[tag=bossskill_b] bossskill 6
execute if entity @e[tag=timetable_2,scores={timetable=55}] if entity @e[nbt={Item:{tag:{Tags:["boss3_1"]}}}] run scoreboard players set @e[tag=bossskill_c] bossskill 1
execute if entity @e[tag=timetable_2,scores={timetable=56}] if entity @e[nbt={Item:{tag:{Tags:["boss3_2"]}}}] run scoreboard players set @e[tag=bossskill_c] bossskill 2
execute if entity @e[tag=timetable_2,scores={timetable=57}] if entity @e[nbt={Item:{tag:{Tags:["boss3_3"]}}}] run scoreboard players set @e[tag=bossskill_c] bossskill 3
execute if entity @e[tag=timetable_2,scores={timetable=58}] if entity @e[nbt={Item:{tag:{Tags:["boss3_4"]}}}] run scoreboard players set @e[tag=bossskill_c] bossskill 4
execute positioned 0 250 0 if entity @e[tag=timetable_2,scores={timetable=60}] run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:paper"}},tag=!sr_paper] 