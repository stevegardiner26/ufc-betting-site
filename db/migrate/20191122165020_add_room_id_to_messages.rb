class AddRoomIdToMessages < ActiveRecord::Migration[6.0]
  def up
    add_column :messages, :room_id, :integer
  end

  def down
    remove_column :messages, :room_id
  end
end
