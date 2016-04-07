class AddSlugToUsersAndPlayers < ActiveRecord::Migration
  def change
    add_column :users, :slug, :string, :unique => true
    add_column :players, :slug, :string, :unique => true
  end
end
