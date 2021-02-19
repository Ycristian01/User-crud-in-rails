class SocialNetworksController < ApplicationController
    before_action :set_social_network, only: %i[ show edit update destroy ]



  
    # GET /users/1 or /users/1.json
  def show
    @user =User.find(params[:user_id])
    @social_network = SocialNetwork.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.find(params[:user_id])
    @social_network = SocialNetwork.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:user_id])
    @social_network = SocialNetwork.find(params[:id])
    puts @social_network.inspect
  end

  # POST /users or /users.json
  def create
    @user = User.find(params[:user_id])
    @social_network = @user.social_networks.create(social_network_params)


    #respond_to do |format|
    if @social_network.save

      redirect_to user_social_network_path @user , @social_network
    end

  end

  # PATCH/PUT /users/1 or /users/1.json
  def update

    @user = User.find(params[:user_id])

    @social_network = @user.social_networks.find(params[:id]).update(social_network_params) 

    redirect_to user_social_network_path @user

  end

  # DELETE /users/1 or /users/1.json
  def destroy

    @user = User.find(params[:user_id])

    @social_network = @user.social_networks.find(params[:id])
    @social_network.destroy
    redirect_to user_path @user

    # @social_network.destroy
    # respond_to do |format|
    #   format.html { redirect_to user_social_networks_path @user, notice: "Network was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_social_network
      @social_network = SocialNetwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_network_params
      params.require(:social_network).permit(:name, :link)
    end

end
