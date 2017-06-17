class UserController < ApplicationController
  def index
    @users = User.all
  end

  def get
    username = params[:username]
    password = params[:password]
    @user = User.new username: username, password: password
    render login_path
  end

  def search
    puts params[:email]
    @user = User
      .includes(:orders)
      .includes(orders: :products)
      .find_by email: params[:email]
    render :"user/index"
  end
end
