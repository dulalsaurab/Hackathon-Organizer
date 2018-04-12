class HomepageController < ApplicationController
  def home
    @hackathons = Hackathon.all
        #render 'hackathons/index.html.erb'
        # @hackathons = Hackathon.where(:user_id => current_user.id)

  end

  def show
    redirect_to hackathon_url
    # if defined?(params[:id]) && (params[:id] != '') then 
    #     @hackathon = Hackathon.find(params[:id]) 
    # else
    #     redirect_to root_url
    # end 
  end
end