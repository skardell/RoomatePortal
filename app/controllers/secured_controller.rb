# class SecuredController < ApplicationController
#
#   before_action :logged_in_using_omniauth?
#
#   private
#
#   def logged_in_using_omniauth?
#     puts session
#     unless session[:userinfo].present?
#       # Redirect to page that has the login here
#       redirect_to '/'
#     end
#   end
# end

class SecuredController < ApplicationController
  before_action :authenticate_user!

end