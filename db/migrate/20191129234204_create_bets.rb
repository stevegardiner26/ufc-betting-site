class CreateBets < ActiveRecord::Migration[6.0]
  def up
    create_table :bets do |t|
      t.boolean :bet_left
      t.integer :amount
      t.integer :user_id
      t.integer :betting_round_id
      t.timestamps
    end
  end

  def down
    drop_table :bets
  end
end
