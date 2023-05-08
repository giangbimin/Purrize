class ApplicationController < ActionController::Base

  private

  def set_time_zone
    timezone = Time.find_zone(cookies[:timezone])
    Time.use_zone(timezone) { yield }
  end
end
