class RoomsController < ApplicationController

  def index
    @rooms = @current_user.rooms
  end

  def new
    @new_room = Room.new
  end

  def create
    @room = @current_user.rooms.create! room_params
    redirect_to @room
  end

  def show

  end

  private

  def room_params
    params.permit(:name, :starting_balance)
  end
end