class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update update_avatar delete_avatar update_gmt]

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(basic_params)
        format.html { render :edit, notice: "Profile was successfully updated." }
        format.json { render :edit, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_avatar
    respond_to do |format|
      if @profile.update(avatar: avatar_params[:avatar])
        format.html { render :edit, status: :ok, notice: "Avatar was successfully updated." }
        format.json { render :edit, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete_avatar
    @profile.avatar.purge_later
    respond_to do |format|
      format.html { render :edit, status: :ok, notice: "Avatar was successfully deleted." }
      format.json { render :edit, status: :ok, location: @profile }
    end 
  end

  def update_gmt
    respond_to do |format|
      if @profile.update(timezone_language_params)
        format.html { render :edit, notice: "GMT/Language was successfully updated." }
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
