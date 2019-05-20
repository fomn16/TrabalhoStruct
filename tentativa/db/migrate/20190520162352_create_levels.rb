class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.float :maxLevel
      t.float :baseExp
      t.float :levelUpPercent

      t.timestamps
    end
  end
end
