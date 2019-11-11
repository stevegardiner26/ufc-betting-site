class RoomsController < ApplicationController

  def index
    @rooms = @current_user.rooms
  end

  def new
    @new_room = Room.new
  end

  def create

  end

  def show

  end
end