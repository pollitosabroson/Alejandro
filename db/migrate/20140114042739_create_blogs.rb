class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string   :title
      t.text     :content
      t.text     :extracto
      t.integer  :categoria_id
      t.boolean  :publicado, :default => true
      t.integer  :user_id
      t.timestamps
      t.timestamps
    end
  end
end
