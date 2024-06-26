effect give @a[scores={level=31..}] minecraft:haste 1 2
effect give @a[scores={level=21..30}] minecraft:haste 1 1
effect give @a[scores={level=11..20}] minecraft:haste 1 0

effect give @a[scores={level=31..}] minecraft:speed 1 2
effect give @a[scores={level=21..30}] minecraft:speed 1 1
effect give @a[scores={level=11..20}] minecraft:speed 1 0

effect give @a[scores={level=31..}] minecraft:regeneration 1 2
effect give @a[scores={level=21..30}] minecraft:regeneration 1 1
effect give @a[scores={level=11..20}] minecraft:regeneration 1 0

effect give @a[scores={level=31..}] minecraft:strength 1 2
effect give @a[scores={level=21..30}] minecraft:strength 1 1
effect give @a[scores={level=11..20}] minecraft:strength 1 0

execute as @a[scores={level=51..}] run attribute @s minecraft:generic.max_health base set 40
execute as @a[scores={level=41..50}] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={level=31..40}] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={level=21..30}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={level=11..20}] run attribute @s minecraft:generic.max_health base set 24

effect give @a[scores={level=51..}] minecraft:resistance 5 1
effect give @a[scores={level=41..50}] minecraft:resistance 5 0
