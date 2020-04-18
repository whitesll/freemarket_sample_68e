【FURIMA_READ.ME】

・usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
 Association
- has_many :products
- has_many :comments

・productsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
 Association
- belongs_to :user
- has_many :comments
- has_many :products_categories
- has_many  :categories,  through:  :products_categories

・categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
Association
- has_many :products_categories
- has_many  :products,  through:  :products_categories

・products_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
Association
- belongs_to :product
- belongs_to :category

・commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
Association
- belongs_to :product
- belongs_to :user
