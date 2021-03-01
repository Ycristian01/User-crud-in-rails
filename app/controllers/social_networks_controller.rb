class SocialNetworksController < ApplicationController
  before_action :set_user
  before_action :set_social_network, only: %i[ show edit update destroy ]
  
  def show
  end

  def new
   @social_network = @user.social_networks.new 
  end

  def edit
  end

  def create
   @social_network = @user.social_networks.create(social_network_params)

    if @social_network.save
      redirect_to user_social_network_path @user , @social_network
      flash[:notice] = "Social network was successfully created"
    else
      render 'new'
    end
  end

  def update
    if @social_network.update(social_network_params) 
      redirect_to user_social_network_path @user
      flash[:notice] = "Social network was successfully updated." 
    else
      render 'edit'
    end   
  end

  def destroy
   @social_network.destroy

   redirect_to user_path @user
   flash[:notice] = "Social network was successfully destroyed." 
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end
      
    def set_social_network
      @social_network = @user.social_networks.find(params[:id]) 
    end

    def social_network_params
      params.require(:social_network).permit(:name, :link) 
    end
end
