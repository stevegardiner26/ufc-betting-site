class Room < ApplicationRecord

  after_create :generate_invite_code

  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :room_messages, dependent: :destroy, inverse_of: :room
  has_many :betting_rounds, dependent: :destroy
  has_many :bets, through: :betting_rounds, dependent: :destroy

  validates :invite_code, uniqueness: true


  def generate_invite_code
    self.invite_code = SecureRandom.urlsafe_base64(12)
    save
  end

  def owner
    users.find(owner_id)
  end
end