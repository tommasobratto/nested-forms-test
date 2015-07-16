class AddOrganisationIdToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :organisation, index: true, foreign_key: true
  end
end
