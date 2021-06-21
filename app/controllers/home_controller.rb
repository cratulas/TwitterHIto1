class HomeController < ApplicationController
    
    before_action :authenticate_user!
    def index
    
        @tweet = Tweet.new    
        array = []
        @friends = Friend.friends_for_me(current_user.id)

        @friends.each do |friend|
            array.push(friend.friend_id)
        end

        
        if params[:q]
            @tweets = Tweet.where('content LIKE ?', "%#{params[:q]}%").page(params[:page]).per(10).order(:created_at)
            if @tweets.nil?
                @tweets = Tweet.tweets_for_me(array).page(params[:page]).per(10).order(:created_at)
            end
        else
            @tweets = Tweet.tweets_for_me(array).page(params[:page]).per(10).order(:created_at)
        end



    end
    
end
