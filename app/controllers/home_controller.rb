class HomeController < ApplicationController
  def index
    @user = User.all
  end
  def show
    @user = User.find(param[:id])
  end
end
