class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end
  
  def new
    @post = current_user.posts.build
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  
  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to :back
  end
  
  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to :back
  end
  
  
  private
  
  def post_params
    params.require(:post).permit(:title, :body, :date)
  end 


end
