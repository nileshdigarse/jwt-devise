class DogsProfileController < ApplicationController

	before_action :set_dogprofile, only: %i[show update destroy]

	def index
    @dogsprofile = DogProfile.all
    render json: @dogsprofile, status: :ok
  end
    
  def create
    @dogprofile = DogProfile.create!(dog_profile_params)
    render json: @dogprofile, status: :created
  end
    
  def show
    @product = DogProfile.find(params[:id])
    render json: @dogprofile, status: :ok
  end
  
  def update
    @dogprofile.update(dog_profile_params)
    head :no_content
  end
  
  def destroy
    @dogprofile.destroy
    head :no_content
  end

  private 

	def dog_profile_params
  	params.permit(:name, :dob, :gender, :breed, :nationality, :avatar, :user_id)
	end

	def set_dogprofile
    @dogprofile = DogProfile.find(params[:id])
  end
end
