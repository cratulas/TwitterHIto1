class HomeController < ApplicationController
    
    before_action :authenticate_user!
    def index
        # @pagy, @tweets = pagy(Tweet.all , items: 3)
        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
        # @tweets = Tweet.order(:id).page(params[:page])
        # @tweets = Tweet.page(1).per(50).padding(3)
        # @tweets = Tweet.page(params[:page]).per(10).order(:created_at)
        @tweet = Tweet.new

        # @friends = Friend.tweets_for_me(current_user.id).page(params[:page]).per(10).order(:created_at)
        # @tweets = @friends.where(friend_id: )

        # Message.where(user_id: Profile.select("user_id").where(gender: 'm'))

        # Tweet.where(user_id: Friend.select("user_id").where(friend_id: ))
        
        array = []
        @friends = Friend.tweets_for_me(current_user.id)

        @friends.each do |friend|
            array.push(friend.friend_id)
        end

        @tweets = Tweet.tweets_for_me(array)




    end
    
end
