class Organisation < ActiveRecord::Base
  has_many :categories
  accepts_nested_attributes_for :categories, allow_destroy: true
end
