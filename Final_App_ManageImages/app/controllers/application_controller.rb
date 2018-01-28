class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    pictures_path
  end
#   def after_existing_sign_in_path_for(resource)
#   dashboard_path
# end

end
