class HackathonsController < ApplicationController
    #@@count=0

    def index
        @hackathons = Hackathon.search(params[:search]) 
        #render 'hackathons/index.html.erb'
    end 
    def show
        @hackathon = Hackathon.find(params[:id])
        #render 'hackathons/show.html.erb'
    end
    def new
        @hackathon = Hackathon.new
        #render 'hackathons/new.html.erb'
    end
    def create
        @hackathon= Hackathon.new(title: params[:hackathon][:title],
                                  topic: params[:hackathon][:topic],
                                  description: params[:hackathon][:description],
                                  owner: params[:hackathon][:owner])
        
        if @hackathon.save
            
            flash[:notice] = "Hackathon saved successfully!"   
            redirect_to hackathons_url
        else
            flash.now[:alert] = "Hackathon save failed!"
            render :new
        end
    end
    
    
   

    
    
    def edit
        @hackathon = Hackathon.find(params[:id])
        #render 'hackathons/edit.html.erb'
    end
    
    def update
        @hackathon = Hackathon.find(params[:id])
        if @hackathon.update(title: params[:hackathon][:title],
                             topic: params[:hackathon][:topic],
                             description: params[:hackathon][:description],
                             owner: params[:hackathon][:owner])

            flash[:notice] = "Hackathon saved successfully!"
            redirect_to hackathons_url
        else
            flash[:alert] = "Hackathon save failed!"
            render :edit
        end
    end

    def destroy
        begin
            @hackathon = Hackathon.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash.now[:alert] = "Hackathon destruction failed!"
            redirect_to hackathons_url and return
        end
        if @hackathon.destroy
            flash[:notice] = "Hackathon destroyed successfully!"
           redirect_to hackathons_url
        else
            flash.now[:alert] = "Hackathon destruction failed!"
            redirect_to hackathons_url
        end

    end
   
=begin
    def vote
        value= params[:type] == "up"? 1 : -1
        @hackathon = Hackathon.find(params[:id])
        @hackathon.add_or_update_evaluation(:votes, value, current_user)
        redirect_to :back, notice: "Thank you for voting"
    end
=end
   
end
