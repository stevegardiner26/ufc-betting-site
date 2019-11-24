class RoomMessage < ApplicationRecord
  belongs_to :room, inverse_of: :room_messages
  belongs_to :user

  validates :message, presence: true

  def as_json(options)
    super(options).merge(user_username: user.username, created_at_string: created_at.strftime(" (%m/%d/%Y %l:%M%p)"))
  end
end