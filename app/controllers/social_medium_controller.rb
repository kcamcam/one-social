class SocialMediumController < ApplicationController
  def index
    redirect_to welcome_index_path
  end

  def show
    redirect_to welcome_index_path
  end

  def edit
    # @social = SocialMedium.find_by_id(params[:id])
    @user = User.find_by_id((SocialMedium.find_by_id(params[:id])).user_id)
  end

  def update
    @social = SocialMedium.find_by_id(params[:id])
    @user = User.find_by_id(@social.user_id)
    if @social.update_attributes(social_params)
      flash[:success] = "Profile updated"
      redirect_to user_path(@user.name)
    else
      flash[:error] = "invalid shit!"
      render 'edit'
      # redirect_to user_path(@user.name)
    end
  end

  private
    def social_params
      params.require(:social_medium).permit(:id,:twitter, :github, :instagram, :youtube, :facebook)
    end
end
