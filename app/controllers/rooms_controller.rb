class RoomsController < ApplicationController

  before_action :load_room, only: [:show]

  def index
    @rooms = @current_user.rooms
  end

  def new
    @new_room = Room.new
  end

  def create
    @room = @current_user.rooms.create(owner_id: @current_user.id, name: params[:room][:name], starting_balance: params[:room][:starting_balance])
    redirect_to @room
  end

  def show

  end

  private

  def room_params
    params.permit(:name, :starting_balance)
  end

  def load_room
    @room = Room.find(params[:id])
  end
end