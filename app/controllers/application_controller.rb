class ApplicationController < ActionController::Base
  protect_from_forgery

#	helper_method :current_user

  private
  # def current_user
  # 	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

 	def after_sign_in_path_for(resource)
 		user_goals_path(current_user)
	end

end