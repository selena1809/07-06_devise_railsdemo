class UsersController < ApplicationController
  # before_action :check_user_logged_in, only: [:show]
  before_action :authenticate_user!
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def check_user_logged_in
    if !current_user
      redirect_to new_user_session_path
    end
  end
end
