class CreateChar3p5s < ActiveRecord::Migration[5.0]
  def change
    create_table :char3p5s do |t|
      t.string :name
      t.integer :strength
      t.integer :dextery
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
