class HomepageController < ApplicationController
  def home
    @hackathons = Hackathon.all
        #render 'hackathons/index.html.erb'
        # @hackathons = Hackathon.where(:user_id => current_user.id)

  end

  def show
    @hackathon = Hackathon.find(params[:id]) 
  end
end