class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :meal

      t.timestamps null: false
    end
  end
end
