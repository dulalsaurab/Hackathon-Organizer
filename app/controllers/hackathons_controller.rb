class HackathonsController < ApplicationController
  before_action :set_hackathon, only: [:show, :edit, :update, :destroy]

  # GET /hackathons
  # GET /hackathons.json
  def index
    @hackathons = Hackathon.search(params[:search]) 
    if defined?(current_user.id) && (current_user.id != '') then 
       @hackathons = Hackathon.where(:user_id => current_user.id)
    else
      redirect_to root_url 
      #render 'hackathons/index.html.erb'
    end 
    
  end
  def allProposal
    @hackathon = Hackathon.find(params[:id])
  end

  def all
    @hackathons = Hackathon.paginate(page: params[:page], :per_page => 6)
  end

  # GET /hackathons/1
  # GET /hackathons/1.json
  def show
    @user_list= []
    
    @customtable = CustomeTable.where(:identifier_id => @hackathon.id)
    @reguser = Registration.where(:hackathon_id => @hackathon.id)
    
    @reguser.each do |user| 
      u = User.find(user.userId)
      @user_list.push(u.user_name)
    end
  end

  # GET /hackathons/new
  def new
    @hackathon = Hackathon.new
  end

  # GET /hackathons/1/edit
  def edit
  end

  # POST /hackathons
  # POST /hackathons.json
  def create
    is_private = params[:is_private]
    custom_count = params[:total_count]
  
    @hackathon = Hackathon.new(hackathon_params)
    respond_to do |format|
      if @hackathon.save
        format.html { redirect_to @hackathon, notice: 'Hackathon was successfully created.' }
        format.json { render :show, status: :created, location: @hackathon }
      else
        format.html { render :new }
        format.json { render json: @hackathon.errors, status: :unprocessable_entity }
      end
    end
    
    list = custom_count.split(",")
    list.each_slice(2){ |x| 
      customtable = CustomeTable.new()
      customtable.question = params["cus_field"+x[0].to_s]
      customtable.answer = params["cus_field"+x[1].to_s]
      customtable.identifier_id = @hackathon.id
      customtable.identifier = @hackathon
      customtable.save!
    } 

  end

  # PATCH/PUT /hackathons/1
  # PATCH/PUT /hackathons/1.json
  def update
    respond_to do |format|
      if @hackathon.update(hackathon_params)
        format.html { redirect_to @hackathon, notice: 'Hackathon was successfully updated.' }
        format.json { render :show, status: :ok, location: @hackathon }
      else
        format.html { render :edit }
        format.json { render json: @hackathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hackathons/1
  # DELETE /hackathons/1.json
  def destroy
    @hackathon.destroy
    if current_user.admin?
      redirect_to current_user
    else
      respond_to do |format|
        format.html { redirect_to hackathons_url, notice: 'Hackathon was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hackathon
      @hackathon = Hackathon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hackathon_params
      params.require(:hackathon).permit(:title, :topic, :description, :owner, :number_of_participants, :start_date, :end_date, :hackathon_venue, :user_id, :is_private, :twitter_link, :avatar)
      # params.fetch(:hackathon, {})
    end

end 