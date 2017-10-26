class ChangeDefaultMoneyValues < ActiveRecord::Migration[5.0]
  def change
  	change_column :char3p5_sheets, :gold_piece, :integer, :default  => 0
    change_column :char3p5_sheets, :silver_piece, :integer, :default  => 0
	change_column :char3p5_sheets, :cooper_piece, :integer, :default  => 0
  end
end
