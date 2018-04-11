class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  # Display All
  def index
    # @users = User.paginate(page: params[:page])
    @users = if params[:term]
      User.search_by_full_name(params[:term]).paginate(page: params[:page])
    else
      User.paginate(page: params[:page])
    end

  end
  # Display User
  def show
    # @user = User.find(params[:id])
    @user = User.find_by_name(params[:id].downcase) #find by username instead
    @social = @user.social_medium
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","discord","paypal","bitcoin","ethereum","email","website"]
  end

  # Create new user
  def new
    @user = User.new
  end
  def create
    user_params[:name].downcase!
    @user = User.new(user_params)
		social = SocialMedium.new # create a blank instance of Social Media for this user
		@user.social_medium = social # create the relation
    if @user.save
      log_in @user
      flash[:success] = "Welcome to oneSocial!"
      redirect_to user_path(@user.name)
    else
      render 'new'
    end
  end

  # Edit user
  def edit
    @user = User.find(params[:id])
  end
  def update
    user_params[:name].downcase!
    @user = User.find(params[:id])
    @social = @user.social_medium
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to user_path(@user.name.downcase)
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation,:social_medium)
    end

    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
