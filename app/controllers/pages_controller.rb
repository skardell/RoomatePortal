class PagesController < ApplicationController

  def homepage
      if user_signed_in?
        redirect_to dashboard_index_url
      end
  end
end
