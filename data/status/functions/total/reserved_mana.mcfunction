#reserved mana
#reserve reduced %
scoreboard players set @s MpRsrHP 100
scoreboard players operation @s MpRsrHP -= @s PMpRsrRedP
scoreboard players operation @s MpRsrHP -= @s EMpRsrRedP
#total reserve %
scoreboard players operation @s MpRsrHP *= @s SMpRsrHP
scoreboard players operation @s MpRsrHP /= #100 Number
