class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string   :categoria
      t.integer  :parent_id
      t.integer  :lft
      t.integer  :rgt
      t.timestamps
    end
  end
end
