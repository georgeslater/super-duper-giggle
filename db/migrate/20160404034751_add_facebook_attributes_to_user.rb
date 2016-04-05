class AddFacebookAttributesToUser < ActiveRecord::Migration
  def change
  	    add_column :users, :provider, :text
  	    add_column :users, :uid, :text
    	add_column :users, :name, :text
    	add_column :users, :oauth_token, :text
    	add_column :users, :oauth_expires_at, :datetime
  end
end
