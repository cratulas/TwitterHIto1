class FriendsController < ApplicationController
    
    def new
        @user = current_user

        @friend = @user.friends.build(user_id: @user.id)
        @friend.friend_id = params[:id_friend]
        @friend.save

        redirect_to new_tweet_path
    end
end
