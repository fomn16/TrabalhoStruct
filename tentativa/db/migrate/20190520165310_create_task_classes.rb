class CreateTaskClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :task_classes do |t|
      t.string :name
      t.float :neededPeoleInTask

      t.timestamps
    end
  end
end
