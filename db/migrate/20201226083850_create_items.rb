class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :image
      t.string :item_name
      t.integer :cost
      t.integer :user_id
      t.integer :brand_id
      t.integer :category_id
      t.timestamps
    end
  end
end
