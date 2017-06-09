class UserController < ApplicationController
  def show

  end

  def get
    username = params[:username]
    password = params[:password]
    @user = User.new username: username, password: password
    render login_path
  end
end
