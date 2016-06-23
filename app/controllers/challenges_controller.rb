class ChallengesController < ApplicationController
  def index
    sort_attribute = params[:sort]

    if sort_attribute
      @challenges = Challenge.order(sort_attribute)
    else
    @challenges = Challenge.all
    end
  end

  def show
    @challenge = Challenge.find_by(id: params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(
    name: params[:name],
    start_date: params[:start_date],
    description: params[:description],
    category: params[:category]
    )

    if @challenge.save
      flash[:success]="Challenge Created"

      redirect_to "/challenges/#{@challenge.id}"
    else
      render :new
    end
  end

  def edit
    @challenge = Challenge.find_by(id: params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update(
      name: params[:name],
      start_date: params[:start_date],
      description: params[:description],
      category: params[:category]
      )

      flash[:success]="Challenge Updated"

      redirect_to "/challenges/#{@challenge.id}"
    else
      render :edit
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    flash[:warning]="Challenge Destroyed"

    redirect_to "/challenges"
  end
end