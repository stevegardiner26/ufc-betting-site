class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find_by(params[:room_id])
    stream_for room

    # or
    # stream_from "room_#{params[:room]}"
  end

  def unsubscribed

  end
end