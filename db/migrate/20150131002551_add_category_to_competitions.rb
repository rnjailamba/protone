class AddCategoryToCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :category, :string
  end
end
