class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :destroy, :update]
  
  def index
    @posts= Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: 'post has been created successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if(@post.update(post_params))
      redirect_to posts_path, notice: 'Post has been updated successfully.'
    else
      render :edit
    end  
  end

  def show
  end

  def destroy
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, notice: 'post has been deleted successfully.'
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
