class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :user, index: true
      t.references :player, index: true
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :notes, :users
    add_foreign_key :notes, :players
  end
end
