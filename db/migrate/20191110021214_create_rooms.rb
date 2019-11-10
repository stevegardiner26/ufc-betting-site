class CreateRooms < ActiveRecord::Migration[6.0]
  def up
    create_table :rooms do |t|
      t.string :name
      t.integer :owner_id
      t.integer :starting_balance
      t.string :invite_code
      t.timestamps
    end
  end

  def down
    drop_table :rooms
  end
end
