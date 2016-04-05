class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true
      t.references :player, index: true
      t.decimal :rating

      t.timestamps null: false
    end
  end
end
