class HomeController < ApplicationController
    

    def index
        # @pagy, @tweets = pagy(Tweet.all , items: 3)
        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
        # @tweets = Tweet.order(:id).page(params[:page])
        @tweets = Tweet.paginate(page: params[:page], per_page: 10)

        # @tweets = Tweet.page(params[:page]).per(3).order(:content)
    end

    # def new
    #     redirect_to new_user_registration_path
    # end

    
end
