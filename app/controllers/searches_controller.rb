class SearchesController < ApplicationController
    def new
        @search =Search.new
        @topics = Hackathon.pluck(:topic)
    end
    def create
        @search =Search.create(search_params)
        redirect_to @search
    end
    def show
        @search =Search.find(params[:id])
    end
    private
    def search_params
        params.require(:search).permit(:keywords, :topic,:owner, :number_of_participants)
    end
end
