class Room < ApplicationRecord

  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :room_messages, dependent: :destroy, inverse_of: :room

  def owner
    users.find(owner_id)
  end
end