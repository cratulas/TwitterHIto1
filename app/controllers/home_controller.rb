class HomeController < ApplicationController
    

    def index
        # @pagy, @tweets = pagy(Tweet.all , items: 3)
        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
        # @tweets = Tweet.order(:id).page(params[:page])
        # @tweets = Tweet.page(1).per(50).padding(3)
        @tweet = Tweet.new
        @tweets = Tweet.page(params[:page]).per(10).order(:created_at)
    end
    
end
