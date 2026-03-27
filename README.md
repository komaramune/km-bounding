# km-bounding
Minecraft JEのコマンドでエンティティが図形の範囲内にいるかの判定を行うライブラリデータパックです。\
Library data pack for determining whether an entity’s position is inside a given shape.

## 対応バージョン / Verified mc versions
Minecraft Java Edition 1.21.2~

## 対応図形 / Shapes
- 直方体：cuboid
- 円柱：cylinder
- 扇形柱・ケーキ型：cake
- 円錐：cone
- 平面：plane（if function用）

## 使用例 / How To Use
引数ストレージに値を設定してから、ファンクションを呼び出すと、範囲内のエンティティにタグが付けられます。\
When you set values in the argument storage and then call the function, entities within the specified range will be tagged.

```mcfunction
# 引数設定 / Set arguments
data modify storage km_bounding: arguments.cuboid set value {selector:"@e[type=armor_stand,distance=..10]",x_plus:3,y_plus:3,z_plus:3.0,x_minus:3.0,y_minus:3.0,z_minus:3.0}

# 関数実行 / Run function
execute as @p at @s run function km_bounding:cuboid/

# タグ利用 / Search for entities using tags.
say @e[tag=bounding_cuboid]

# タグ削除 / Remove tags
tag @e[tag=bounding_cuboid] remove bounding_cuboid
```

## 連絡先 / Contact
不具合や要望などがあればXまでご連絡ください。
https://x.com/komaramune
