class AddGoldPiecesToChar3p5 < ActiveRecord::Migration[5.0]
  def change
    add_column :char3p5s, :gold_piece, :integer
  end
end
