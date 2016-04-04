class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :number_of_players
      t.string :day_of_week
      t.integer :time

      t.timestamps null: false
    end
  end
end
