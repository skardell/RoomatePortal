class DashboardController < SecuredController
  def show
      @user = current_user
  end
end