execute if score #GemLevel Number matches 1 run data modify storage gemstat: GemStat set value {Lvl:18,Int:33,DMoreP:125,Exp:69833}
execute if score #GemLevel Number matches 2 run data modify storage gemstat: GemStat set value {Lvl:22,Int:39,DMoreP:126,Exp:128549}
execute if score #GemLevel Number matches 3 run data modify storage gemstat: GemStat set value {Lvl:26,Int:45,DMoreP:127,Exp:154553}
execute if score #GemLevel Number matches 4 run data modify storage gemstat: GemStat set value {Lvl:29,Int:49,DMoreP:128,Exp:225374}
execute if score #GemLevel Number matches 5 run data modify storage gemstat: GemStat set value {Lvl:32,Int:54,DMoreP:129,Exp:320672}
execute if score #GemLevel Number matches 6 run data modify storage gemstat: GemStat set value {Lvl:35,Int:58,DMoreP:130,Exp:447718}
execute if score #GemLevel Number matches 7 run data modify storage gemstat: GemStat set value {Lvl:38,Int:63,DMoreP:131,Exp:615318}
execute if score #GemLevel Number matches 8 run data modify storage gemstat: GemStat set value {Lvl:41,Int:67,DMoreP:132,Exp:834639}
execute if score #GemLevel Number matches 9 run data modify storage gemstat: GemStat set value {Lvl:44,Int:72,DMoreP:133,Exp:1570760}
execute if score #GemLevel Number matches 10 run data modify storage gemstat: GemStat set value {Lvl:47,Int:76,DMoreP:134,Exp:1633987}
execute if score #GemLevel Number matches 11 run data modify storage gemstat: GemStat set value {Lvl:50,Int:81,DMoreP:135,Exp:2151030}
execute if score #GemLevel Number matches 12 run data modify storage gemstat: GemStat set value {Lvl:53,Int:85,DMoreP:136,Exp:2812189}
execute if score #GemLevel Number matches 13 run data modify storage gemstat: GemStat set value {Lvl:56,Int:90,DMoreP:137,Exp:3655184}
execute if score #GemLevel Number matches 14 run data modify storage gemstat: GemStat set value {Lvl:58,Int:93,DMoreP:138,Exp:3017327}
execute if score #GemLevel Number matches 15 run data modify storage gemstat: GemStat set value {Lvl:60,Int:96,DMoreP:139,Exp:7818905}
execute if score #GemLevel Number matches 16 run data modify storage gemstat: GemStat set value {Lvl:62,Int:99,DMoreP:140,Exp:15256013}
execute if score #GemLevel Number matches 17 run data modify storage gemstat: GemStat set value {Lvl:64,Int:102,DMoreP:141,Exp:26260555}
execute if score #GemLevel Number matches 18 run data modify storage gemstat: GemStat set value {Lvl:66,Int:105,DMoreP:142,Exp:62855887}
execute if score #GemLevel Number matches 19 run data modify storage gemstat: GemStat set value {Lvl:68,Int:108,DMoreP:143,Exp:212002638}
execute if score #GemLevel Number matches 20 run data modify storage gemstat: GemStat set value {Lvl:70,Int:111,DMoreP:144,Exp:0}
execute if score #GemLevel Number matches 21 run data modify storage gemstat: GemStat set value {Lvl:72,Int:114,DMoreP:145,Exp:0}
execute if score #GemLevel Number matches 22 run data modify storage gemstat: GemStat set value {Lvl:74,Int:0,DMoreP:146,Exp:0}
execute if score #GemLevel Number matches 23 run data modify storage gemstat: GemStat set value {Lvl:76,Int:0,DMoreP:147,Exp:0}
execute if score #GemLevel Number matches 24 run data modify storage gemstat: GemStat set value {Lvl:78,Int:0,DMoreP:148,Exp:0}
execute if score #GemLevel Number matches 25 run data modify storage gemstat: GemStat set value {Lvl:80,Int:0,DMoreP:149,Exp:0}
execute if score #GemLevel Number matches 26 run data modify storage gemstat: GemStat set value {Lvl:82,Int:0,DMoreP:150,Exp:0}
execute if score #GemLevel Number matches 27 run data modify storage gemstat: GemStat set value {Lvl:84,Int:0,DMoreP:151,Exp:0}
execute if score #GemLevel Number matches 28 run data modify storage gemstat: GemStat set value {Lvl:86,Int:0,DMoreP:152,Exp:0}
execute if score #GemLevel Number matches 29 run data modify storage gemstat: GemStat set value {Lvl:88,Int:0,DMoreP:153,Exp:0}
execute if score #GemLevel Number matches 30 run data modify storage gemstat: GemStat set value {Lvl:90,Int:0,DMoreP:154,Exp:0}
execute if score #GemLevel Number matches 31 run data modify storage gemstat: GemStat set value {Lvl:91,Int:0,DMoreP:154,Exp:0}
execute if score #GemLevel Number matches 32 run data modify storage gemstat: GemStat set value {Lvl:92,Int:0,DMoreP:155,Exp:0}
execute if score #GemLevel Number matches 33 run data modify storage gemstat: GemStat set value {Lvl:93,Int:0,DMoreP:155,Exp:0}
execute if score #GemLevel Number matches 34 run data modify storage gemstat: GemStat set value {Lvl:94,Int:0,DMoreP:156,Exp:0}
execute if score #GemLevel Number matches 35 run data modify storage gemstat: GemStat set value {Lvl:95,Int:0,DMoreP:156,Exp:0}
execute if score #GemLevel Number matches 36 run data modify storage gemstat: GemStat set value {Lvl:96,Int:0,DMoreP:157,Exp:0}
execute if score #GemLevel Number matches 37 run data modify storage gemstat: GemStat set value {Lvl:97,Int:0,DMoreP:157,Exp:0}
execute if score #GemLevel Number matches 38 run data modify storage gemstat: GemStat set value {Lvl:98,Int:0,DMoreP:158,Exp:0}
execute if score #GemLevel Number matches 39 run data modify storage gemstat: GemStat set value {Lvl:99,Int:0,DMoreP:158,Exp:0}
execute if score #GemLevel Number matches 40 run data modify storage gemstat: GemStat set value {Lvl:100,Int:0,DMoreP:159,Exp:0}

execute store result score #Temp Lvl run data get storage gemstat: GemStat.Lvl
execute store result score #Temp Int run data get storage gemstat: GemStat.Int
execute store result score #Temp Number run data get storage gemstat: GemStat.DMoreP
scoreboard players operation @s DMoreP *= #Temp Number
scoreboard players operation @s DMoreP /= #100 Number
execute store result score #Temp Exp run data get storage gemstat: GemStat.Exp
scoreboard players set #Temp Number 130
scoreboard players operation #Temp CostMoreP *= #Temp Number
scoreboard players operation #Temp CostMoreP /= #100 Number
scoreboard players set #Temp Number -100
scoreboard players operation @s CriIncP += #Temp Number
