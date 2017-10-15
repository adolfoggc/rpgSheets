class AddCooperPiecesToChar3p5 < ActiveRecord::Migration[5.0]
  def change
    add_column :char3p5s, :cooper_piece, :integer
  end
end
