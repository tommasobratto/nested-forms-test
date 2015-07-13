class Organisation < ActiveRecord::Base
  has_many :category_organisations
  has_many :categories, through: :category_organisations
  accepts_nested_attributes_for :categories, allow_destroy: true
end
