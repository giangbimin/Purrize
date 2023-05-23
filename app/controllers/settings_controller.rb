class SettingsController < ApplicationController
 before_action :set_user, only: %i[edit update]

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { render :edit, status: :ok, notice: "Profile was successfully updated." }
        format.json { render :edit, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.first
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_information)
    end
end
