class RegistrationsController < ApplicationController
    
    def joinevent
        
        hackathon_id = params[:HkId]

        if defined?(current_user.id) && (current_user.id != '') then 
           userId = current_user.id
            @registration = Registration.new(userId: userId, hackathon_id: hackathon_id)
            respond_to do |format|
              if @registration.save
                respond_to :js, :json, :html
                format.html { redirect_to '/hackathons/' + hackathon_id, notice: 'You joined this event successfully.' }
                format.json { render json: "aa" }
              end
          end
        else
          respond_to do |format|
                respond_to :js, :json, :html
                format.html { redirect_to '/hackathons/' + hackathon_id, notice: 'You must be registered to join event.' }
                format.json { render json: "bb" }
          end
        end 
    end
    
    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def join_params
      params.require(:registrations).permit(:userId, :hackathon_id)
    end    
end 