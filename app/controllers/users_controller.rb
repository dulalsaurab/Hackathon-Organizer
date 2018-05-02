class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_only, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  before_action :right_user,     only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page], :per_page => 10)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    if @user.admin?
      @hackathons = Hackathon.paginate(page: params[:page], :per_page => 9)
      @users = User.paginate(page: params[:page], :per_page => 9)
    end

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = @user.user_name + ", Welcome to the Hackathon Organizer"
      redirect_to @user
    else
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "user deleted"
    redirect_to users_path
  end
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :email, :description, :password, :password_confirmation)
    end
    
    def logged_in_only
      unless logged?
        flash[:danger] = "Please Log in..."
        redirect_to login_url
      end
    end
    def right_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
