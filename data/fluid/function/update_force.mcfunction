scoreboard players set @s fx 0
scoreboard players operation @s fy = Gravity fluid
tag @s add p1
scoreboard players operation x fluid = @s x
scoreboard players operation y fluid = @s y
scoreboard players operation dens fluid = @s density
scoreboard players operation vx fluid = @s vx
scoreboard players operation vy fluid = @s vy
execute as @e[type=marker,tag=particle,distance=..2] run function fluid:update_p1_force
tag @s remove p1
