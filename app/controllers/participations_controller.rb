class ParticipationsController < ApplicationController
 
    before_action :authenticate_user!

    def index
      if user_signed_in? && current_user.participations.count > 0
        @participations = current_user.participations
      else
        flash[:info] = "Please accept a challenge!"
        redirect_to '/challenges'
      end
    end

    def create
      @participation = Participation.create(
        challenge_id: params[:challenge_id],
        user_id: current_user.id
        status: "accepted"
        )
    end
end
