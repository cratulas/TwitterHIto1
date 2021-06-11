class HomeController < ApplicationController
    

    def index
        # @pagy, @tweets = pagy(Tweet.all , items: 3)
        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
        @tweets = Tweet.order(:content).page(params[:page])
        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
    end
end
