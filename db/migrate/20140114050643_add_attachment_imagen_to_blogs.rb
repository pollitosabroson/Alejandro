class AddAttachmentImagenToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :imagen
    end
  end

  def self.down
    drop_attached_file :blogs, :imagen
  end
end
