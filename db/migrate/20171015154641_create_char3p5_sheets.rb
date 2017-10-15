class CreateChar3p5Sheets < ActiveRecord::Migration[5.0]
  def change
    create_table :char3p5_sheets do |t|
      t.string :name
      t.integer :strength
      t.integer :dextery
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :gold_piece
      t.integer :silver_piece
      t.integer :cooper_piece

      t.timestamps
    end
  end
end
