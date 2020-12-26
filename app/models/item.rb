class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :brand
  belongs_to :category

  #空の投稿を保存できないようにする
  validates :item_name, :cost, :user_id, presence: true
  
  #ブランド名・カテゴリー（下地かファンデーションか）の選択が「--」の時は保存できないようにする
  with_options numericality: { other_than: 1, message: 'Select' } do
    validates :brand_id
    validates :category_id
  end
end
