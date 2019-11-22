class RenameTextToMessage < ActiveRecord::Migration[6.0]
  def up
    rename_column :room_messages, :text, :message
  end

  def down
    rename_column :room_messages, :message, :text
  end
end
