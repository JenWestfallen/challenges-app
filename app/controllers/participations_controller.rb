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
        user_id: current_user.id,
        status: "accepted"
        )


    session[:participation_count] = nil
    flash[:success] = "Challenge Accepted"
    redirect_to "/participations"
    end

   def destroy
      @participation = Participation.find(params[:id])
      @participation.update(status: "removed")

      session[:participation_count] = nil
      flash[:success] = "Challenge Removed"
      redirect_to '/challenges'
  end

  end
