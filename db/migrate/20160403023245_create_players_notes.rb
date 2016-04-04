class CreatePlayersNotes < ActiveRecord::Migration
  def change
    create_table :player_note do |t|
    	t.text :note
    	t.references :user, index: true
      	t.references :player, index: true
    end
  end
end
