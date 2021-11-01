scoreboard players enable @a[tag=!setupinv] setupinv
scoreboard players enable @a inv1
scoreboard players enable @a inv2

execute as @a[scores={setupinv=1}] run function mis:inv/setup
execute as @a[scores={inv1=1}] run function mis:inv/inv1
execute as @a[scores={inv1=1}] run function mis:inv/inv2

execute as @a[tag=inv1] run data modify storage mis:inventory Inventory[0] set from entity @s Inventory
execute as @a[tag=inv2] run data modify storage mis:inventory Inventory[1] set from entity @s Inventory