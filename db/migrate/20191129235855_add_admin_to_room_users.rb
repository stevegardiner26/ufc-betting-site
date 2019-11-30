class AddAdminToRoomUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :room_users, :admin, :boolean, default: 0
  end

  def down
    remove_column :room_users, :admin
  end
end
