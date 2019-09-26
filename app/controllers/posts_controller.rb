class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # for form_for
    @post = Post.new

    # for collection select
    @bloggers = Blogger.all
    @destinations = Destination.all
  end

  def create
    @post = Post.create(params.require(:post).permit(:title, :content, :likes, :destination_id, :blogger_id))
    
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to "/posts/new"
    end
  end

  def edit
  end

  def update
  end

end
