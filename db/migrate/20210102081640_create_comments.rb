class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :image
      t.string :recommend_item_name, null: false
      t.integer :cost, null: false
      t.text :description, null:false
      t.integer :user_id, null: false
      t.integer :brand_id, null: false
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
