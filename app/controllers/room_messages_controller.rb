class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.create(user_id: @current_user.id, room: @room, message: params.dig(:room_message, :message))
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end