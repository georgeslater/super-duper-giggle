class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :player, index: true
      t.decimal :old_rating
      t.decimal :new_rating
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :histories, :players
    add_foreign_key :histories, :users
  end
end
