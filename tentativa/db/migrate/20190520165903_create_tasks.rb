class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.float :xp
      t.float :coins
      t.references :taskStatus
      t.timestamp :deadline
      t.references :taskClass, foreign_key: true

      t.timestamps
    end
  end
end
