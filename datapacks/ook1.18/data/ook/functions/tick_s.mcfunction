scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:iron_axe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}}] hy_ook 0
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}}] hy_ook_use1 0
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}] hy_ook_use2 0
scoreboard players add @a hy_ook_time 1
scoreboard players add @e[tag=hy_ook_1] hy_ook_time 1
scoreboard players set @a[scores={hy_ook_time=9..}] hy_ook 0
scoreboard players set @a[scores={hy_ook_time=10..}] hy_ook_time 0
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~ ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~ ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~ ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~ ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~ ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~ ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~ ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~ ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~-1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~-1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~-1 ~1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~-1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~-1 ~ {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~1 ~-1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~ ~-1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={hy_ook=1..,hy_ook_use1=1..}] at @e[type=item,sort=nearest,distance=..5] run summon minecraft:armor_stand ~-1 ~-1 ~-1 {Invisible:1,Marker:1,Tags:["hy_ook_1"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}},scores={hy_ook=1..,hy_ook_use2=1..}] at @e[distance=..5,type=item,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["hy_ook_2"]}
function ook:aim