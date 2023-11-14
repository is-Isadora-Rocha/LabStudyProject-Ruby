class CreateComidas < ActiveRecord::Migration[7.1]
  def change
    create_table :comidas do |t|
      t.string :nome
      t.string :tipo
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
