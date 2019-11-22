class CreateMessages < ActiveRecord::Migration[6.0]
  def up
    create_table :messages do |t|
      t.text :text
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :messages
  end
end
