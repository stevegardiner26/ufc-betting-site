class RenameMessagesToRoomMessages < ActiveRecord::Migration[6.0]
  def up
    rename_table :messages, :room_messages
  end

  def down
    rename_table :room_messages, :messages
  end
end
