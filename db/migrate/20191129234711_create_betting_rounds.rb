class CreateBettingRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :betting_rounds do |t|
      t.string :left_bet
      t.string :right_bet
      t.integer :max_bet
      t.integer :min_bet
      t.integer :pre_time
      t.boolean :locked
      t.boolean :auto_payout
      t.integer :post_time
      t.integer :room_id
      t.timestamps
    end
  end
end
