class AddLastActiveToPlayers < ActiveRecord::Migration
  def change
  	  remove_column :players, :has_left_the_country
  	  add_column :players, :last_active, :date
  end
end
