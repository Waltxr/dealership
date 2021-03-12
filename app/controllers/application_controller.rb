class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :auth_admin

  def auth_admin
    redirect_to root_path if !current_user.admin?
  end
end
