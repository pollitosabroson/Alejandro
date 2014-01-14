class Categoria < ActiveRecord::Base
  attr_accessible :categoria
  validates :categoria, presence: true
end
