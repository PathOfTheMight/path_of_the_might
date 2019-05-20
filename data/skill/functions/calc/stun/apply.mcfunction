#summon minecraft:item ^ ^0.5 ^ {Item:{id:"minecraft:horn_coral_fan",Count:1b},PickupDelay:32767,Age:5955,NoGravity:1b}
effect give @s minecraft:slowness 1 5 true
scoreboard players operation @s WaitTimeH > #20 Number
