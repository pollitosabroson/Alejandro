class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string   :categoria
      t.integer  :parent_id
      t.integer  :lft
      t.integer  :rgt
      t.timestamps
    end
  end
end
