class AddFacebookUidToPlayers < ActiveRecord::Migration
  def change
  	  add_column :players, :facebook_id, :string
  end
end
