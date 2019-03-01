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
#スキル
scoreboard objectives add WaitTimeH dummy
#検知
scoreboard objectives add Trigger trigger
#scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add Drop minecraft.custom:minecraft.drop
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add SelectedItem dummy

function main:add_score

scoreboard players set #Rand Number 1
scoreboard players set #2 Number 2
scoreboard players set #3 Number 3
scoreboard players set #4 Number 4
scoreboard players set #5 Number 5
scoreboard players set #7 Number 7
scoreboard players set #10 Number 10
scoreboard players set #21 Number 21
scoreboard players set #60 Number 60
scoreboard players set #100 Number 100
scoreboard players set #195 Number 195
scoreboard players set #4096 Number 4096
scoreboard players set #100000000 Number 100000000

setworldspawn -40896 1 -40960
#00000000-0000-0000-0000-000000000000 
summon minecraft:armor_stand -40896 1 -40960 {CustomName:'{"text":"Center"}',Tags:[Center],HandItems:[{id:"minecraft:chest",Count:1b,tag:{Items:[]}},{id:"minecraft:polished_granite",Count:1b,tag:{String:"None"}}],UUIDLeast:0L,UUIDMost:0L}
#00000000-0000-0001-0000-000000000000 
summon minecraft:armor_stand -40896 1 -40960 {CustomName:'{"text":"Calc"}',Tags:[Calc],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,UUIDLeast:0L,UUIDMost:1L}
setblock -40896 1 -40960 minecraft:oak_sign
