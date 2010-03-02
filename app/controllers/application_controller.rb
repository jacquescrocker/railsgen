class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # reload app config every request (dev only)
  before_filter do 
    AppConfig.reload! if Rails.env.development?
    return true
  end
  
end
