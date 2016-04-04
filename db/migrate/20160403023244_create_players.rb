class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.text :first_name
      t.text :last_name
      t.boolean :has_left_the_country
      t.boolean :is_goalie

      t.timestamps null: false
    end
  end
end
