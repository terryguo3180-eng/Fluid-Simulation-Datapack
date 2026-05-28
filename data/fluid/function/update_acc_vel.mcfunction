execute if score @s is_wall matches 1 run return 0
scoreboard players operation t0 fluid = @s fx
scoreboard players operation t0 fluid /= 15 fluid
scoreboard players operation @s vx += t0 fluid
scoreboard players operation @s x += @s vx
scoreboard players operation t0 fluid = @s fy
scoreboard players operation t0 fluid /= 15 fluid
scoreboard players operation @s vy += t0 fluid
scoreboard players operation @s y += @s vy
