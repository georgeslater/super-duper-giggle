class DeletePlayerNotesTable < ActiveRecord::Migration
  def change
  	drop_table :player_note
  end
end
