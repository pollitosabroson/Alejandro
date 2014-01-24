class Categoria < ActiveRecord::Base
  acts_as_nested_set
  attr_accessible :categoria
  has_many :product
  validates :categoria, presence: true
end
