#> km_bounding:zz/cone/calc
#
# @within function km_bounding:cone/

# sin(頂角/4) 取得
    execute store result entity @s Rotation[0] float 0.00025 run data get storage km_bounding: arguments.cone.angle 1000
    execute rotated as @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
    data modify storage km_bounding: cone.macro.sin set from entity @s Pos[0]

# 一時マーカ削除
    kill @s