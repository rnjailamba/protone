class AddUserIdToCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :user_id, :integer
    add_index :competitions, :user_id
  end
end
