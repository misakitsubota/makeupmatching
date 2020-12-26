# README
# README

## users table

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| encrypted_password    | string  | null: false |

### Association
- has_many :items
- has_many :comments


## items table

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| image                 | text    | null: false |
| item_name             | string  | null: false |
| cost                  | integer | null: false |
| user_id               | integer | null: false, foreign_key: true |
| brand_id              | integer | null: false, foreign_key: true |
| category_id           | integer | null: false, foreign_key: true |


### Association
- belongs_to :user
- has_many :comments


## comments table

| Column               | Type    | Options     |
| ---------------      | ------- | ----------- |
| image                | text    | null: false |
| recommend_item_name  | string  | null: false |
| cost                 | integer | null: false |
| description          | text    | null: false |
| user_id              | integer | null: false, foreign_key: true |
| item_id              | integer | null: false, foreign_key: true |
| brand_id             | integer | null: false, foreign_key: true |
| category_id          | integer | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :item

