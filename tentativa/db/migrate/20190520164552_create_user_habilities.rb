class CreateUserHabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habilities do |t|
      t.references :user, foreign_key: true
      t.references :hability, foreign_key: true
      t.float :habilityLevel

      t.timestamps
    end
  end
end
