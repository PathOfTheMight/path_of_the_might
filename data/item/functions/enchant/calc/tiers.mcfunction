# if LT==0 => LT = GT
execute if score #LocalTier Number matches 0 run scoreboard players operation #LocalTier Number = #GlobalTier Number
# CT > (GT-LT+1) = GT'
scoreboard players operation #GlobalTier Number -= #LocalTier Number
scoreboard players add #GlobalTier Number 1
scoreboard players operation #CurrentTier Number > #GlobalTier Number
#TierBar = LT-(GT-CT+1) = CT-GT' = CT'
scoreboard players operation #CurrentTier Number -= #GlobalTier Number
execute if score #CurrentTier Number matches 0 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value ""
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐"
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐"
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐-"
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐"
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐-"
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐"
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐-"
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐"
execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐-"
execute if score #CurrentTier Number matches 10 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐"
execute if score #CurrentTier Number matches 11 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐-"
execute if score #CurrentTier Number matches 12 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐‐‐"
execute if score #CurrentTier Number matches 13 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐‐‐-"
execute if score #CurrentTier Number matches 14 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐‐‐‐‐"
execute if score #CurrentTier Number matches 15 run data modify block -40691 1 -40700 RecordItem.tag.TierBar set value "‐‐‐‐‐‐‐‐‐‐‐‐‐‐-"
# TierStar = GT-CT+1 = LT-CT'
scoreboard players operation #LocalTier Number -= #CurrentTier Number
execute if score #LocalTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★"
execute if score #LocalTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★"
execute if score #LocalTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★"
execute if score #LocalTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★"
execute if score #LocalTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★"
execute if score #LocalTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★"
execute if score #LocalTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★"
execute if score #LocalTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★"
execute if score #LocalTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★"
execute if score #LocalTier Number matches 10 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★"
execute if score #LocalTier Number matches 11 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★"
execute if score #LocalTier Number matches 12 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★★"
execute if score #LocalTier Number matches 13 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★★★"
execute if score #LocalTier Number matches 14 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★★★★"
execute if score #LocalTier Number matches 15 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★★★★★"
execute if score #LocalTier Number matches 16 run data modify block -40691 1 -40700 RecordItem.tag.TierStar set value " ★★★★★★★★★★★★★★★★"
# CT = CT'+GT' (復元)
scoreboard players operation #CurrentTier Number += #GlobalTier Number
