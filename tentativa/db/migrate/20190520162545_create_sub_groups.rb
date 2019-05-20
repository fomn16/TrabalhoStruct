class CreateSubGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_groups do |t|
      t.string :name
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
