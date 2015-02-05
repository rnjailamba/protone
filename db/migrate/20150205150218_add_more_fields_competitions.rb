class AddMoreFieldsCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :moreDetails ,:text
    add_column :competitions, :location ,:string
    add_column :competitions, :onOff ,:string
    add_column :competitions, :linkWebsite ,:string
    add_column :competitions, :linkFb ,:string
    add_column :competitions, :organizedBy ,:string
    add_column :competitions, :startDate,:datetime
    add_column :competitions, :endDate,:datetime
    
  end
end
