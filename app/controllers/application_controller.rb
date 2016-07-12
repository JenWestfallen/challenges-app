class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :calculate_participation_count

  private
    def calculate_participation_count
      if user_signed_in?
        if session[:participation_count]
          @participation_count = session[:participation_count]
        else
          @participation_count = current_user.possible_participations.count
          session[:participation_count] = @participation_count
        end
      end
    end

    def authenticate_admin!
      unless user_signed_in? && current_user.admin 
        redirect_to '/challenges'
      end
    end
end
