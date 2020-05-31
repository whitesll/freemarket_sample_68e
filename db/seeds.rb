# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create(name: "レディース")
man = Category.create(name: "メンズ")
baby = Category.create(name: "ベビー・キッズ")
interior = Category.create(name: "インテリア・住まい・小物")
book= Category.create(name: "本・音楽・ゲーム")
hobby = Category.create(name: "おもちゃ・ホビー・グッズ")
cosmetics = Category.create(name: "コスメ・香水・美容")
appliance = Category.create(name: "家電・スマホ・カメラ")
sport = Category.create(name: "スポーツ・レジャー")
handmade = Category.create(name: "ハンドメイド")
ticket = Category.create(name: "チケット")
bicycle = Category.create(name: "自転車・オートバイ")
others = Category.create(name: "その他")