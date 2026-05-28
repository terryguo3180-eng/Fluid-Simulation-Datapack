scoreboard players operation @s density = @s is_wall
scoreboard players operation @s density *= 9000 fluid
tag @s add p1
scoreboard players operation x fluid = @s x
scoreboard players operation y fluid = @s y
execute as @e[type=marker,tag=particle,distance=..2] run function fluid:update_p1_density
tag @s remove p1
