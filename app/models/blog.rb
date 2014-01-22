class Blog < ActiveRecord::Base
  paginates_per 5
  attr_accessible :content, :title, :extracto, :categoria_id, :tag_list, :imagen, :publicado
  acts_as_taggable rescue nil
  has_one :categoria

  has_attached_file :imagen, {
    :styles => {
      :big => ["495x195>"],
      :thumb => ["225x225>"]
    }
  }.merge(PAPERCLIP_STORAGE_OPTIONS)
  def slug
    title.downcase.gsub(" ", "-")  
  end

  def to_param
    "#{id}-#{slug}"
  end
end
