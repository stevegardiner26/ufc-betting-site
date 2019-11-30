class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :room, :presence => true
  validates :user, :presence => true, uniqueness: {scope: :room}

  attr_accessor :room_code

  def admin?
    admin
  end
end