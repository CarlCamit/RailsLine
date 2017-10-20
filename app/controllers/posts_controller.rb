class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @replies = Reply.all
  end

  def new
    @post = current_user.posts.build
  end
  
  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :subject, :body, :avatar_image)
    end
end
