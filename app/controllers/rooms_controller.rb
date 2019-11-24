class RoomsController < ApplicationController

  before_action :load_room, only: [:show]
  before_action :permission_check, only: :show

  def index
    @rooms = @current_user.rooms
  end

  def new
    @room = Room.new
  end

  def create
    @room = @current_user.rooms.create(owner_id: @current_user.id, name: params[:room][:name], starting_balance: params[:room][:starting_balance])
    redirect_to @room
  end

  def show
    @room_message = RoomMessage.new room: @room
    @room_messages = @room.room_messages.includes(:user)
  end

  private

  def room_params
    params[:room].permit(:name, :starting_balance)
  end

  def permission_check
    if not @room.users.include? @current_user
      redirect_to rooms_path
    end
  end

  def load_room
    @room = Room.find(params[:id])
  end
end