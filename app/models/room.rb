class Room < ApplicationRecord

  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users


  def owner
    users.find(owner_id)
  end
end