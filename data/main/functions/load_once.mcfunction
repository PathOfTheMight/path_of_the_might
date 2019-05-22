scoreboard objectives add Number dummy
scoreboard objectives add X0 dummy
scoreboard objectives add Y0 dummy
scoreboard objectives add Z0 dummy
scoreboard objectives add X1 dummy
scoreboard objectives add Y1 dummy
scoreboard objectives add Z1 dummy
scoreboard objectives add X2 dummy
scoreboard objectives add Y2 dummy
scoreboard objectives add Z2 dummy
#ワールド
scoreboard objectives add map dummy
scoreboard objectives add MapControl dummy
#スキル
scoreboard objectives add AITime dummy
scoreboard objectives add RngMin dummy
#検知
scoreboard objectives add Trigger trigger
#scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add Drop minecraft.custom:minecraft.drop
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add SelectedItem dummy

function main:add_score

scoreboard players set #-1 Number -1
scoreboard players set #0 Number 0
scoreboard players set #1 Number 1
scoreboard players set #2 Number 2
scoreboard players set #3 Number 3
scoreboard players set #4 Number 4
scoreboard players set #5 Number 5
scoreboard players set #6 Number 6
scoreboard players set #7 Number 7
scoreboard players set #8 Number 8
scoreboard players set #9 Number 9
scoreboard players set #10 Number 10
scoreboard players set #12 Number 12
scoreboard players set #16 Number 16
scoreboard players set #20 Number 20
scoreboard players set #21 Number 21
scoreboard players set #31 Number 31
scoreboard players set #90 Number 90
scoreboard players set #100 Number 100
scoreboard players set #120 Number 120
scoreboard players set #180 Number 180
scoreboard players set #195 Number 195
scoreboard players set #1000 Number 1000
scoreboard players set #2000 Number 2000
scoreboard players set #4096 Number 4096
scoreboard players set #1000000 Number 1000000

setworldspawn -40696 1 -40696
#0-0-0-0-0 
summon minecraft:armor_stand -40696 1 -40696 {CustomName:'{"text":"Center"}',Tags:[Center],HandItems:[{id:"minecraft:chest",Count:1b,tag:{Items:[]}},{id:"minecraft:polished_granite",Count:1b,tag:{String:"None"}}],UUIDLeast:0L,UUIDMost:0L}
#0-0-1-0-0 
summon minecraft:armor_stand -40696 1 -40696 {CustomName:'{"text":"Calc"}',Tags:[Calc],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,UUIDLeast:0L,UUIDMost:1L}
setblock -40691 1 -40700 minecraft:jukebox{RecordItem:{id:"stone",Count:1b}} keep
setblock -40692 1 -40700 minecraft:oak_sign keep
setblock -40693 1 -40700 minecraft:end_gateway{ExitPortal:{X:-40696,Y:1,Z:-40696}} keep
