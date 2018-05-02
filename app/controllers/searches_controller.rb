class SearchesController < ApplicationController
    def new
        @search =Search.new
        @topics = Hackathon.pluck(:topic)
        #@is_privates = Hackathon.pluck(:is_private)
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
        params.require(:search).permit(:title, :topic, :description, :number_of_participants, :start_date, :end_date, :hackathon_venue, :is_private)
    end
end
