class HomepageController < ApplicationController
  def home
    #@hackathons = Hackathon.all

    @hackathons = Hackathon.all.sample(6)
    #find(:all).sample(5)
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