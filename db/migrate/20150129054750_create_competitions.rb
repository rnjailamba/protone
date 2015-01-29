class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.text :description
      t.string :collegename
      t.integer :money

      t.timestamps null: false
    end
  end
end
