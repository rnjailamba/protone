class AddDateTextFieldsCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :startDateText,:text
    add_column :competitions, :endDateText,:text
    
  end
end
