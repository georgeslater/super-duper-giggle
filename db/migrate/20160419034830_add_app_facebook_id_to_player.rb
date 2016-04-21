class AddAppFacebookIdToPlayer < ActiveRecord::Migration
  def change
  	 add_column :players, :app_facebook_id, :text
  end
end
