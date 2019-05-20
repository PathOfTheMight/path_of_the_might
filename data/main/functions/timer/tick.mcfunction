#常に実行するfunction・コマンド

#1sec timer
scoreboard players add #Tick Number 1
execute if score #Tick Number matches 21 store success score #Tick Number run function main:timer/second

#Dur
tag @e[tag=!Player,scores={Dur=0}] add Kill
scoreboard players remove * Dur 1

#delayed_task
#execute as @e[tag=delayed_task] run function main:timer/delayed_task

#GenerateTick
execute if score #GenerateTick Number matches 1..64 as @p[tag=GenerateMap] at @s run function map:generate/check_load
#MapControl
execute as @a positioned as @s if block ~ ~-4 ~ #main:map_control run function map:across/map_control
#portal
execute as @a[tag=InPortal] positioned as @s unless entity @e[tag=Portal,limit=1,distance=..2] run tag @s remove InPortal
execute as @a[tag=!InPortal] positioned as @s if entity @e[tag=Portal,limit=1,distance=..2] run function map:portal/message/allocate/main
#trigger tellrawクリック処理
execute as @a[scores={Trigger=1..}] at @s run function main:trigger

#fall 落下処理
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!GenerateMap] positioned as @s run function main:fall/check/main

#Pack
execute as @a[tag=!GenerateMap] at @s rotated ~ 0 positioned ^ ^ ^8 as @e[tag=Pack,tag=!Spawned,distance=..16] positioned as @s run function map:spawn/allocate/main

#ダメージ計算
execute as @e[tag=Damaged] run function main:dmg

#トリガー
#scoreboard players reset @a[scores={SneakTime=0}] WaitTimeH
execute as @a[scores={Drop=1..}] at @s run function main:trigger/drop
execute as @a[scores={SneakTime=1..}] at @s run function main:trigger/sneak_time
execute as @a[scores={Sprint=1..}] at @s run function main:trigger/sprint
#敵AI
execute as @e[tag=Enemy,scores={AITime=..4,WaitTimeH=..0}] anchored eyes at @s anchored feet run function enemy:ai/main
#Status
execute as @e[tag=Player] at @s run function status:tick/player/main
execute as @e[tag=Enemy] at @s run function status:tick/enemy/main

#Kill
tag @e[tag=GroundKill,nbt={OnGround:1b}] add VoidKill
tp @e[tag=VoidKill] -40960 -60 -40960
kill @e[tag=VoidKill]
kill @e[tag=Kill]

#スキル
execute as @e[tag=Skill] at @s run function skill:calc/tick/main

##########
scoreboard players remove * WaitTimeH 100
#Workbench
execute as @e[tag=Workbench] positioned as @s if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:1b}]} run function item:enchant/main

#Physics
execute as @e[tag=Move] at @s run function main:physics/move/main
execute as @e[tag=Rotate] at @s run function main:physics/rotate/main
execute as @e[tag=Pose] run function main:physics/pose/main