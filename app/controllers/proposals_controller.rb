class ProposalsController < ApplicationController
    #before_action :set_user, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
    def show
        @proposal = Proposal.find(params[:id])
        #render 'proposals/show.html.erb'
    end
    def index
        #@proposals = Proposal.all 
        if defined?(current_user.id) && (current_user.id != '') then 
            @proposals = Proposal.where(:user_id => current_user.id)
         else
           redirect_to root_url 
           #render 'proposals/index.html.erb'
         end 
        #render 'proposals/index.html.erb'
    end


    def new
        @proposal = Proposal.new
        #render 'proposals/new.html.erb'
    end
    
    def create
        @proposal= Proposal.new(userId: params[:proposal][:userId],
                                title: params[:proposal][:title],
                                hkId: params[:proposal][:hkId],
                                description: params[:proposal][:description],
                                customForm: params[:proposal][:customForm],
                                votes: params[:proposal][:votes]
                                )
        
        
        if @proposal.save
            
            flash[:notice] = "proposals saved successfully!"   
            redirect_to proposals_url
        else
            flash.now[:alert] = "proposals save failed!"
            render :new
        end
    end
    def upvote 
        @proposal = Proposal.find(params[:id])
        @proposal.upvote_by(@proposal.user)
        
        redirect_to proposals_url
    end  
   
    def downvote
        @proposal = Proposal.find(params[:id])
        @proposal.downvote_by(@proposal.user)
        
        redirect_to proposals_url
    end
    
    
   

    
    
    def edit
        @proposal = Proposal.find(params[:id])
        #render 'proposals/edit.html.erb'
    end
    
    def update
        @proposal = Proposal.find(params[:id])
        @proposal.new(userId: params[:proposal][:userId],
                       title: params[:proposal][:title],
                       hkId: params[:proposal][:hkId],
                       description: params[:proposal][:description],
                       customForm: params[:proposal][:customForm],
                       votes: params[:proposal][:votes]
                       )
            flash[:notice] = "proposals saved successfully!"
            redirect_to proposals_url
        else
            flash[:alert] = "proposals save failed!"
            render :edit
        end
    end

    def destroy
        begin
            @proposal = Proposal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash.now[:alert] = "proposals destruction failed!"
            redirect_to proposals_url and return
        end
        if @proposal.destroy
            flash[:notice] = "proposals destroyed successfully!"
           redirect_to proposals_url
        else
            flash.now[:alert] = "proposals destruction failed!"
            redirect_to proposals_url
        end
end
