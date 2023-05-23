class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update]

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(basic_params)
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully updated." }
        format.json { render :edit, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_profile
      user_id = User.first.id
      @profile = Profile.find_or_initialize_by(user_id: user_id)
    end

    def profile_params
      params.require(:profile).permit(:tel, :basic_information, :dob, :gender, :address, :zip, :timezone, :language)
    end

    def basic_params
      params.require(:profile).permit(:full_name, :tel, :basic_information, :dob, :address, :zip)
    end
  
    def avatar_params
      params.require(:profile).permit(:avatar)
    end

    def timezone_language_params
      params.require(:profile).permit(:timezone, :language)
    end
end
