class RetweetsController < ApplicationController
    def create_retweet

        @tweet = Tweet.find(params[:id_tweet])
        @user = current_user
    
        @new_tweet  = @user.tweets.build
        @new_tweet.content = @tweet.content
        @new_tweet.save
        @tweet.retweets=+1
        @tweet.save
    
    
        redirect_to root_path
        
    end
end
