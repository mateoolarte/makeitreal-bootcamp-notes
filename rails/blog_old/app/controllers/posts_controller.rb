class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @post = Post.new
  end

  def create
    safe_params = params.require(:post)
      .permit(:title, :content)
    @post = Post.new safe_params
    @post.user = current_user
    if @post.save
      if current_user.posts.length == 1
        FirstPostMailer.first_post_email(current_user).deliver_now
      end
      redirect_to user_post_path(current_user, @post)
    else
      render :new
    end
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
