#Middleman function to store Grapple Strength

tag @s remove kinetic_grapple.grappling

#Move Grapple Strength to Storage
execute store result storage kinetic_grapple:storage grapple_strength int 1 run scoreboard players get @s kinetic_grapple

function kinetic_grapple:impulse with storage kinetic_grapple:storage