class CreateClanMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :clan_members do |t|
      t.references :user, foreign_key: true
      t.references :clan, foreign_key: true
      t.boolean :isLeager
      t.boolean :acceptedInvite

      t.timestamps
    end
  end
end
