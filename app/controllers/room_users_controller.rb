class RoomUsersController < ApplicationController

  def new
    @room_user = RoomUser.new
    render :new
  end

  def create
    # TODO: Find out why the heck i have to do params[:room_user][] and not just params
    @room = Room.find_by_invite_code(params[:room_user][:room_code])
    if @room.present?
      @room.room_users.create(user_id: @current_user.id, balance: @room.starting_balance)
      redirect_to @room
    end
  end

  private

  def room_users_params
    params.permit(:room_code)
  end
end