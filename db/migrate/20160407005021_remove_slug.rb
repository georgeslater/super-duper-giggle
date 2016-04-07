class RemoveSlug < ActiveRecord::Migration
  def change
    remove_column :users, :slug
    remove_column :players, :slug
   end
end
