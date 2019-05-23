class CreateStoreItems < ActiveRecord::Migration[5.2]
  def change
    create_table :store_items do |t|
      t.string :name
      t.float :price
      t.float :minLevel
      t.boolean :consumable

      t.timestamps
    end
  end
end
