class CreateRpgSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :rpg_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end

#rails g scaffold Char3p5 name:string strength:integer dextery:integer constitution:integer intelligence:integer wisdom:integer charisma:integer gold_piece:integer silver_piece:integer cooper_piece:integer
