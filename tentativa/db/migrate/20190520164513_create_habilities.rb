class CreateHabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :habilities do |t|
      t.string :name
      t.float :dmgPercent
      t.float :defPercent
      t.float :maxHabilityLevel
      t.float :minUserLevel
      t.float :extraDmgPercent
      t.float :extraDefPercent
      t.float :levelsForUpgrade
      t.string :habilityClass
      t.string :habilitySubclass

      t.timestamps
    end
  end
end
