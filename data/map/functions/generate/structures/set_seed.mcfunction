#Seed 4桁
#11-11
#rotation_type 1~11 - patterns 01~99

#rotation_type
#1:full 2:slash 3:backslash 4:north 5:northeast 6:east 7:southeast 8:south 9:southwest 10:west 11:northwest
#01234567 - 1346 - 0257     - 06    - 16        - 17    - 27       - 24     - 34       - 35     - 05

#Setting
#mirror - rotation - x - z                    
#0:NONE - NONE - 0 - 0                        
#1:NONE - CLOCKWISE_90 - 15 - 0               
#2:NONE - CLOCKWISE_180 - 15 - 15             
#3:NONE - COUNTERCLOCKWISE_90 - 0 - 15        
#4:LEFT_RIGHT - NONE - 0 - 15                 
#5:LEFT_RIGHT - CLOCKWISE_90 - 0 - 0          
#6:LEFT_RIGHT - CLOCKWISE_180 - 15 - 0        
#7:LEFT_RIGHT - COUNTERCLOCKWISE_90 - 15 - 15 

#pack削除
kill @e[tag=Pack,dx=15,dy=31,dz=15]

#structure_block設置 *debug時
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
setblock ~ ~ ~ minecraft:structure_block{mode:LOAD,name:"",ignoreEntities:0b} replace

#Seed取得
execute store result score #Seed Number run data get block -40691 1 -40700 RecordItem.tag.Seed 1

### SeedからSetting割り当て
#乱数生成
execute if score #Seed Number matches 100..199 run scoreboard players set #RandMod Number 8
execute if score #Seed Number matches 200..399 run scoreboard players set #RandMod Number 4
execute if score #Seed Number matches 400..1199 run scoreboard players set #RandMod Number 2

function main:rand

#0~7
execute if score #Seed Number matches 100..199 run scoreboard players operation #Setting Number = #RandMod Number

execute if score #Seed Number matches 200..299 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 1
execute if score #Seed Number matches 200..299 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 3
execute if score #Seed Number matches 200..299 if score #RandMod Number matches 2 run scoreboard players set #Setting Number 4
execute if score #Seed Number matches 200..299 if score #RandMod Number matches 3 run scoreboard players set #Setting Number 6

execute if score #Seed Number matches 300..399 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 0
execute if score #Seed Number matches 300..399 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 2
execute if score #Seed Number matches 300..399 if score #RandMod Number matches 2 run scoreboard players set #Setting Number 5
execute if score #Seed Number matches 300..399 if score #RandMod Number matches 3 run scoreboard players set #Setting Number 7

execute if score #Seed Number matches 400..499 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 0
execute if score #Seed Number matches 400..499 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 6

execute if score #Seed Number matches 500..599 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 1
execute if score #Seed Number matches 500..599 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 6

execute if score #Seed Number matches 600..699 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 1
execute if score #Seed Number matches 600..699 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 7

execute if score #Seed Number matches 700..799 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 2
execute if score #Seed Number matches 700..799 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 7

execute if score #Seed Number matches 800..899 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 2
execute if score #Seed Number matches 800..899 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 4

execute if score #Seed Number matches 900..999 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 3
execute if score #Seed Number matches 900..999 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 4

execute if score #Seed Number matches 1000..1099 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 3
execute if score #Seed Number matches 1000..1099 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 5

execute if score #Seed Number matches 1100..1199 if score #RandMod Number matches 0 run scoreboard players set #Setting Number 0
execute if score #Seed Number matches 1100..1199 if score #RandMod Number matches 1 run scoreboard players set #Setting Number 5

#Settingからnbt代入
execute if score #Setting Number matches 0 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"NONE",posX:0,posZ:0}
execute if score #Setting Number matches 1 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"CLOCKWISE_90",posX:15,posZ:0}
execute if score #Setting Number matches 2 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"CLOCKWISE_180",posX:15,posZ:15}
execute if score #Setting Number matches 3 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",posX:0,posZ:15}
execute if score #Setting Number matches 4 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"NONE",posX:0,posZ:15}
execute if score #Setting Number matches 5 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_90",posX:0,posZ:0}
execute if score #Setting Number matches 6 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_180",posX:15,posZ:0}
execute if score #Setting Number matches 7 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"COUNTERCLOCKWISE_90",posX:15,posZ:15}

### patterns算出 *11まで
scoreboard players operation #Seed Number %= #100 Number

#乱数生成
scoreboard players operation #RandMod Number = #Seed Number
function main:rand

#structure名取得
execute if score #RandMod Number matches 0 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[0]
execute if score #RandMod Number matches 1 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[1]
execute if score #RandMod Number matches 2 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[2]
execute if score #RandMod Number matches 3 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[3]
execute if score #RandMod Number matches 4 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[4]
execute if score #RandMod Number matches 5 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[5]
execute if score #RandMod Number matches 6 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[6]
execute if score #RandMod Number matches 7 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[7]
execute if score #RandMod Number matches 8 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[8]
execute if score #RandMod Number matches 9 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[9]
execute if score #RandMod Number matches 10 run data modify block ~ ~ ~ name set from block -40691 1 -40700 RecordItem.tag.StructureName[10]

#ロード
setblock ~ ~1 ~ minecraft:redstone_block

execute as @e[tag=TempPack,dx=15,dy=31,dz=15] run function map:generate/structures/set_pack
