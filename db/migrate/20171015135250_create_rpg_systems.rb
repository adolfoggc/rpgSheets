class CreateRpgSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :rpg_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end
