class CreateTaskParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :task_participants do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
