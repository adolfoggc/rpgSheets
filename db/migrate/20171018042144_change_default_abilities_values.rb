class ChangeDefaultAbilitiesValues < ActiveRecord::Migration[5.0]
  def change
  	change_column :char3p5_sheets, :dextery, :integer, :default  => 8
    change_column :char3p5_sheets, :strength, :integer, :default  => 8
    change_column :char3p5_sheets, :constitution, :integer, :default  => 8
    change_column :char3p5_sheets, :intelligence, :integer, :default  => 8
    change_column :char3p5_sheets, :wisdom, :integer, :default  => 8
	change_column :char3p5_sheets, :charisma, :integer, :default  => 8
  end
end
