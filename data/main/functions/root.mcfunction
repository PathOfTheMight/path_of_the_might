#ニュートン法により@s root スコアの平方根を取る
#@s rootに平方根を取る値 #root rootに平方根をとった予測値をセットし、as @sでこのfunctionを実行
#xn+1=(xn^2+a)/2xn
#初期値x1=#root root=10 5回繰り返す 
# #root root =x1   @s root=a
#root2:一時計算用
#scoreboard players operation #root2 root = #root root
#scoreboard players operation #root2 root *= #root root
#scoreboard players operation #root2 root += @s root
#scoreboard players operation #root2 root /= #2 Number
#scoreboard players operation #root2 root /= #root root

#scoreboard players operation #root root = #root2 root
#scoreboard players remove #root Time 1
#execute if score #root Time matches 1.. run function main:root
#execute if score #root Time matches 0 run scoreboard players operation @s root = #root root

#execute if score #root Time matches 0 run scoreboard players set #root Time 20
