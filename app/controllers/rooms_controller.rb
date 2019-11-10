class RoomsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def index
    @rooms = @current_user.rooms
  end

  def show

  end
end