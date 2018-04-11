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
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","discord","paypal","bitcoin","ethereum","email","website"]
  end

  def update
    @user = User.find_by_id(params[:id])
    @social = @user.social_medium
    # Leave this heres, its need for the rror messages
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","discord","paypal","bitcoin","ethereum","email","website"]
    if @social.update_attributes(social_params)
      flash[:success] = "Updated"
      redirect_to user_path(@user.name)
    else
      flash[:danger] = "Invalid entry, either its already taken or the wrong format. Only letters, numbers, @, -, and _ are permitted."
      render 'edit'
      # redirect_to user_path(@user.name)
    end
  end

  private
    def social_params
      params.require(:social_medium).permit(:twitter,:instagram,:youtube,:facebook,:googleplus,:pinterest,:snapchat,:flickr,:wire,:messenger,:medium,:reddit,:hackernews,:github,:keybase,:devpost,:devto,:angel,:linkedin,:steam,:origin,:twitch,:discord,:bitcoin,:ethereum,:paypal,:tumblr,:email,:website,:spotify,:soundcloud)
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
