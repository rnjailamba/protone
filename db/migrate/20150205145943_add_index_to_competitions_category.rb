class AddIndexToCompetitionsCategory < ActiveRecord::Migration
  def change
  	add_index :competitions, :category
  end
end
