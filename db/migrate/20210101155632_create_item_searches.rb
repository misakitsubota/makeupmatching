class CreateItemSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :item_searches do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
