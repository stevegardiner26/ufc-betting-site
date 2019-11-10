class RoomsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @title = "Hello"
    @rooms = Room.all
  end

  def show

  end
end