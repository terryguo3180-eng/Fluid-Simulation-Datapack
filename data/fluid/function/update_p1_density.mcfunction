scoreboard players operation t0 fluid = x fluid
scoreboard players operation t0 fluid -= @s x
scoreboard players operation t0 fluid *= t0 fluid
scoreboard players operation t0 fluid /= 1000 fluid
scoreboard players operation t1 fluid = y fluid
scoreboard players operation t1 fluid -= @s y
scoreboard players operation t1 fluid *= t1 fluid
scoreboard players operation t1 fluid /= 1000 fluid
scoreboard players operation t0 fluid += t1 fluid
execute if score t0 fluid matches 4000.. run return 0
execute store result storage fluid args.x int 1 run scoreboard players get t0 fluid
execute store result score dens fluid run function fluid:sqrt with storage fluid args
scoreboard players operation dens fluid /= 2 fluid
scoreboard players remove dens fluid 1000
scoreboard players operation dens fluid *= dens fluid
scoreboard players operation dens fluid /= 1000 fluid
execute as @e[type=marker,tag=p1,limit=1] run scoreboard players operation @s density += dens fluid
