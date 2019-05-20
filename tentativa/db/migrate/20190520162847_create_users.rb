class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.date :dateOfBirth
      t.references :gender, foreign_key: true
      t.float :level
      t.references :group, foreign_key: true
      t.string :birthLocation
      t.float :coins

      t.timestamps
    end
  end
end
