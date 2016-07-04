class PossibleParticipationsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    if user_signed_in? && current_user.possible_participations.count > 0
      @saved_challenges = current_user.possible_participations
    else
      flash[:info] = "Check out our challenges! Save some that you might want to commit to!"
      redirect_to '/challenges'
    end
  end

  def create
    @possible_participation = PossibleParticipation.create(
      challenge_id: params[:challenge_id],
      user_id: current_user.id,
      status: "saved"
      )

    session[:participation_count] = nil
    flash[:success] = "Challenge Saved"
    redirect_to "/saved_challenges"
  end

  def accept
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
    @possible_participation = PossibleParticipation.find(params[:id])
    @possible_participation.update(status: "removed")

    session[:participation_count] = nil
    flash[:success] = "Challenge Removed"
    redirect_to '/challenges'
  end



end
