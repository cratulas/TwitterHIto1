class LikesController < ApplicationController

  def create

    @user = current_user
    @like = @user.tweets.build.likes.build(user_id: @user.id)
    @like.tweet_id = params[:id_tweet]
    @like.save
    redirect_to root_path
    
  end

  

end