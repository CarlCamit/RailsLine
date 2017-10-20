class RepliesController < ApplicationController
  before_action :set_reply, only: [:destroy]

  def create
    @post = Post.find(params[:post_id])
    @reply = @post.replies.new(reply_params)

    if @reply.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @reply.destroy
    redirect_to replies_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:post_id, :body)
    end
end
