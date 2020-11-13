execute if score #GemLevel Number matches 1 run data modify storage gemstat: GemStat set value {Lvl:31,Int:52,LnPene:18,Exp:285815}
execute if score #GemLevel Number matches 2 run data modify storage gemstat: GemStat set value {Lvl:34,Int:57,LnPene:19,Exp:252595}
execute if score #GemLevel Number matches 3 run data modify storage gemstat: GemStat set value {Lvl:36,Int:60,LnPene:20,Exp:314394}
execute if score #GemLevel Number matches 4 run data modify storage gemstat: GemStat set value {Lvl:38,Int:63,LnPene:21,Exp:388734}
execute if score #GemLevel Number matches 5 run data modify storage gemstat: GemStat set value {Lvl:40,Int:66,LnPene:22,Exp:477437}
execute if score #GemLevel Number matches 6 run data modify storage gemstat: GemStat set value {Lvl:42,Int:69,LnPene:23,Exp:583786}
execute if score #GemLevel Number matches 7 run data modify storage gemstat: GemStat set value {Lvl:44,Int:72,LnPene:24,Exp:710359}
execute if score #GemLevel Number matches 8 run data modify storage gemstat: GemStat set value {Lvl:46,Int:75,LnPene:25,Exp:1355511}
execute if score #GemLevel Number matches 9 run data modify storage gemstat: GemStat set value {Lvl:48,Int:78,LnPene:26,Exp:1138877}
execute if score #GemLevel Number matches 10 run data modify storage gemstat: GemStat set value {Lvl:50,Int:81,LnPene:27,Exp:1368233}
execute if score #GemLevel Number matches 11 run data modify storage gemstat: GemStat set value {Lvl:52,Int:84,LnPene:28,Exp:1638338}
execute if score #GemLevel Number matches 12 run data modify storage gemstat: GemStat set value {Lvl:54,Int:87,LnPene:29,Exp:1956648}
execute if score #GemLevel Number matches 13 run data modify storage gemstat: GemStat set value {Lvl:56,Int:90,LnPene:30,Exp:3655184}
execute if score #GemLevel Number matches 14 run data modify storage gemstat: GemStat set value {Lvl:58,Int:93,LnPene:31,Exp:3017327}
execute if score #GemLevel Number matches 15 run data modify storage gemstat: GemStat set value {Lvl:60,Int:96,LnPene:32,Exp:7720126}
execute if score #GemLevel Number matches 16 run data modify storage gemstat: GemStat set value {Lvl:62,Int:99,LnPene:33,Exp:15058455}
execute if score #GemLevel Number matches 17 run data modify storage gemstat: GemStat set value {Lvl:64,Int:102,LnPene:34,Exp:25964218}
execute if score #GemLevel Number matches 18 run data modify storage gemstat: GemStat set value {Lvl:66,Int:105,LnPene:35,Exp:62460771}
execute if score #GemLevel Number matches 19 run data modify storage gemstat: GemStat set value {Lvl:68,Int:108,LnPene:36,Exp:211508743}
execute if score #GemLevel Number matches 20 run data modify storage gemstat: GemStat set value {Lvl:70,Int:111,LnPene:37,Exp:0}
execute if score #GemLevel Number matches 21 run data modify storage gemstat: GemStat set value {Lvl:72,Int:114,LnPene:38,Exp:0}
execute if score #GemLevel Number matches 22 run data modify storage gemstat: GemStat set value {Lvl:74,Int:0,LnPene:39,Exp:0}
execute if score #GemLevel Number matches 23 run data modify storage gemstat: GemStat set value {Lvl:76,Int:0,LnPene:40,Exp:0}
execute if score #GemLevel Number matches 24 run data modify storage gemstat: GemStat set value {Lvl:78,Int:0,LnPene:41,Exp:0}
execute if score #GemLevel Number matches 25 run data modify storage gemstat: GemStat set value {Lvl:80,Int:0,LnPene:42,Exp:0}
execute if score #GemLevel Number matches 26 run data modify storage gemstat: GemStat set value {Lvl:82,Int:0,LnPene:43,Exp:0}
execute if score #GemLevel Number matches 27 run data modify storage gemstat: GemStat set value {Lvl:84,Int:0,LnPene:44,Exp:0}
execute if score #GemLevel Number matches 28 run data modify storage gemstat: GemStat set value {Lvl:86,Int:0,LnPene:45,Exp:0}
execute if score #GemLevel Number matches 29 run data modify storage gemstat: GemStat set value {Lvl:88,Int:0,LnPene:46,Exp:0}
execute if score #GemLevel Number matches 30 run data modify storage gemstat: GemStat set value {Lvl:90,Int:0,LnPene:47,Exp:0}
execute if score #GemLevel Number matches 31 run data modify storage gemstat: GemStat set value {Lvl:91,Int:0,LnPene:47,Exp:0}
execute if score #GemLevel Number matches 32 run data modify storage gemstat: GemStat set value {Lvl:92,Int:0,LnPene:48,Exp:0}
execute if score #GemLevel Number matches 33 run data modify storage gemstat: GemStat set value {Lvl:93,Int:0,LnPene:48,Exp:0}
execute if score #GemLevel Number matches 34 run data modify storage gemstat: GemStat set value {Lvl:94,Int:0,LnPene:49,Exp:0}
execute if score #GemLevel Number matches 35 run data modify storage gemstat: GemStat set value {Lvl:95,Int:0,LnPene:49,Exp:0}
execute if score #GemLevel Number matches 36 run data modify storage gemstat: GemStat set value {Lvl:96,Int:0,LnPene:50,Exp:0}
execute if score #GemLevel Number matches 37 run data modify storage gemstat: GemStat set value {Lvl:97,Int:0,LnPene:50,Exp:0}
execute if score #GemLevel Number matches 38 run data modify storage gemstat: GemStat set value {Lvl:98,Int:0,LnPene:51,Exp:0}
execute if score #GemLevel Number matches 39 run data modify storage gemstat: GemStat set value {Lvl:99,Int:0,LnPene:51,Exp:0}
execute if score #GemLevel Number matches 40 run data modify storage gemstat: GemStat set value {Lvl:100,Int:0,LnPene:52,Exp:0}

execute store result score #Temp Lvl run data get storage gemstat: GemStat.Lvl
execute store result score #Temp Int run data get storage gemstat: GemStat.Int
execute store result score #Temp Number run data get storage gemstat: GemStat.LnPene
scoreboard players operation @s LnPene += #Temp Number
execute store result score #Temp Exp run data get storage gemstat: GemStat.Exp
scoreboard players set #Temp Number 140
scoreboard players operation #Temp CostMoreP *= #Temp Number
scoreboard players operation #Temp CostMoreP /= #100 Number
