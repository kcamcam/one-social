class SocialMediumController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]

  def index
    # @user = User.find_by_name(params[:id]) #find by username instead
    # @social = @user.social_medium
    redirect_to welcome_index_path
  end

  def show
    # @user = User.find_by_name(params[:id]) #find by username instead
    # @social = @user.social_medium
    redirect_to welcome_index_path
  end

  def edit
    @user = User.find_by_name(params[:id])
    @social = @user.social_medium
  end

  def update
    @user = User.find_by_id(params[:id])
    @social = @user.social_medium
    if @social.update_attributes(social_params)
      flash[:success] = "Profile updated"
      redirect_to user_path(@user.name)
    else
      flash[:error] = "Invalid username, only letters, numbers, dashes and underscores are permitted."
      render 'edit'
      # redirect_to user_path(@user.name)
    end
  end

  private
    def social_params
      params.require(:social_medium).permit(:twitter, :github, :instagram, :youtube, :facebook)
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
      @username = User.find_by_name(params[:id])
      @userid = User.find_by_id(params[:id])
      redirect_to(root_url) unless (current_user?(@username) || current_user?(@userid))
    end
end
