class LikesController < ApplicationController
  # before_action :set_tweet, only: %i[ create ]

  def create
    # @like = Like.new(like_params.merge(user: current_user))
    # @like = current_user.tweets.build.likes.build(user_id: current_user.id)

    @user = current_user
    @like = @user.tweets.build.likes.build(user_id: @user.id)
    @like.tweet_id = params[:id_tweet]
    @like.save
    redirect_to root_path
    # redirect_to :action => :show, :id => @post.id
    
  end

  private


  # Only allow a list of trusted parameters through.
  # def like_params
  #   params.require(:like).permit(:amount)
  # end
end



# def create
#   current_user.follow(@user)
#   redirect_to @user
# end

# def destroy
#   current_user.unfollow(@user)
#   redirect_to @user
# end

# private
#   def set_followed_user
#     @user = User.find(params[:relationship][:followed_id])
#   end
# end