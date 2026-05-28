scoreboard players operation t0 fluid = x fluid
scoreboard players operation t0 fluid -= @s x
scoreboard players operation dx fluid = t0 fluid
scoreboard players operation t0 fluid *= t0 fluid
scoreboard players operation t0 fluid /= 1000 fluid
scoreboard players operation t1 fluid = y fluid
scoreboard players operation t1 fluid -= @s y
scoreboard players operation dy fluid = t1 fluid

# inter = dx^2 // 1000 + dy^2 // 1000
# if inter >= 4000: return 0
scoreboard players operation t1 fluid *= t1 fluid
scoreboard players operation t1 fluid /= 1000 fluid
scoreboard players operation t0 fluid += t1 fluid
execute if score t0 fluid matches 4000.. run return 0
execute store result storage fluid args.x int 1 run scoreboard players get t0 fluid
execute store result score inter fluid run function fluid:sqrt with storage fluid args
scoreboard players operation inter fluid /= 2 fluid
scoreboard players remove inter fluid 1000

# diff = 3000 - p1.dens - p2.dens
scoreboard players set t0 fluid 3000
scoreboard players operation t0 fluid -= dens fluid
scoreboard players operation t0 fluid -= @s density

# t1 = dx * diff // 1000 * Pressure // 1000
scoreboard players operation t1 fluid = t0 fluid
scoreboard players operation t1 fluid *= dx fluid
scoreboard players operation t1 fluid /= 1000 fluid
scoreboard players operation t1 fluid *= Pressure fluid
scoreboard players operation t1 fluid /= 1000 fluid

# t2 = p1.vx * Viscosity // 1000 - p2.vx * Viscosity // 1000
scoreboard players operation t2 fluid = vx fluid
scoreboard players operation t2 fluid *= Viscosity fluid
scoreboard players operation t2 fluid /= 1000 fluid
scoreboard players operation t3 fluid = @s vx
scoreboard players operation t3 fluid *= Viscosity fluid
scoreboard players operation t3 fluid /= 1000 fluid
scoreboard players operation t2 fluid -= t3 fluid

# t1 += t2
scoreboard players operation t1 fluid += t2 fluid

# t1 = inter * t1 // p1.dens
scoreboard players operation t1 fluid *= inter fluid
scoreboard players operation t1 fluid /= dens fluid

# p1.fx += t1
execute as @e[type=marker,tag=p1,limit=1] run scoreboard players operation @s fx += t1 fluid

# t1 = dy * diff // 1000 * Pressure // 1000
scoreboard players operation t1 fluid = t0 fluid
scoreboard players operation t1 fluid *= dy fluid
scoreboard players operation t1 fluid /= 1000 fluid
scoreboard players operation t1 fluid *= Pressure fluid
scoreboard players operation t1 fluid /= 1000 fluid

# t2 = p1.vy * Viscosity // 1000 - p2.vy * Viscosity // 1000
scoreboard players operation t2 fluid = vy fluid
scoreboard players operation t2 fluid *= Viscosity fluid
scoreboard players operation t2 fluid /= 1000 fluid
scoreboard players operation t3 fluid = @s vy
scoreboard players operation t3 fluid *= Viscosity fluid
scoreboard players operation t3 fluid /= 1000 fluid
scoreboard players operation t2 fluid -= t3 fluid

# t1 += t2
scoreboard players operation t1 fluid += t2 fluid

# t1 = inter * t1 // p1.dens
scoreboard players operation t1 fluid *= inter fluid
scoreboard players operation t1 fluid /= dens fluid

# p1.fy += t1
execute as @e[type=marker,tag=p1,limit=1] run scoreboard players operation @s fy += t1 fluid
