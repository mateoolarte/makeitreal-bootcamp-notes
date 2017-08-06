class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    safe_params = params.require(:post)
      .permit(:title, :content)
    @post = Post.new safe_params
    @post.user = current_user
    if @post.save
      if current_user.posts.length == 1
        FirstPostMailer.first_post_email(current_user).deliver_now
        # FirstPostMailer.first_post_email(current_user).deliver_later
      end
      redirect_to user_post_path(current_user, @post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def show
    @post = Post.find params[:id]
  end

  def update
    safe_params = params.require(:post)
      .permit(:title, :content)
    @post = Post.find params[:id]
    if @post.user == current_user
      @post.update_attributes safe_params
      @post.save
    else
      render json: {error: "No puedes actualizar el post de otro usuario"}, status: :forbbiden
    end
  end

  def destroy
  end
end
