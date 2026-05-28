execute if score @s x matches ..-1 run return run kill @s
scoreboard players operation t2 fluid = @s x
scoreboard players operation t2 fluid /= 2 fluid
scoreboard players operation t0 fluid = Width fluid
scoreboard players operation t0 fluid *= 1000 fluid
execute if score t2 fluid >= t0 fluid run return run kill @s
execute if score @s y matches ..-1 run return run kill @s
scoreboard players operation t0 fluid = @s y
scoreboard players operation t0 fluid /= 2 fluid
scoreboard players operation t1 fluid = Height fluid
scoreboard players operation t1 fluid *= 1000 fluid
execute if score t0 fluid >= t1 fluid run return run kill @s
scoreboard players operation x fluid = ix fluid
scoreboard players operation x fluid += t2 fluid
scoreboard players operation y fluid = iy fluid
scoreboard players operation y fluid -= t0 fluid
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x fluid
execute store result entity @s Pos[1] double 0.001 run scoreboard players get y fluid
