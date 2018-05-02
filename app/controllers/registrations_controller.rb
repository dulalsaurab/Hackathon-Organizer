class RegistrationsController < ApplicationController
    
    def joinevent
        
        hackathon_id = params[:HkId]

        if defined?(current_user.id) && (current_user.id != '') then 
            userId = current_user.id

            @registration = Registration.new(userId: userId, hackathon_id: hackathon_id)
            
            begin
              @registration.save!
              render json: { message: 'You joined this event successfully.', code: 'p' }
            rescue ActiveRecord::RecordNotUnique => e
              render json: { message: 'You are already registered to this event.', code:'u' }
            end

        else
            render json: { message: 'You must be registered to join event.', code:'nl' }
        end 
    end
    
    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def join_params
      params.require(:registrations).permit(:userId, :hackathon_id)
    end    
end 

