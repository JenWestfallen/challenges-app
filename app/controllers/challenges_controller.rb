class ChallengesController < ApplicationController
  
  def landing_index
        @challenges = Challenge.all
        @comments = Comment.all
  end

  def index

    @challenges = Challenge.all
    sort_attribute = params[:sort]
    category_search_id = params[:search_category_id]
    creator_id = params[:creator_id]
    
    if category_search_id
      @challenges = Category.find(category_search_id).challenges
    end

    if sort_attribute
      @challenges = @challenges.order(sort_attribute)
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
    url: params[:url],
    creator_id: current_user.id
    )

    if @challenge.save
      @category_array = params[:category]

      @category_array.each do |category_num|
        CategorizedChallenge.create(
          challenge_id: @challenge.id, 
          category_id: category_num.to_i
          )
      end


      # flash[:success]="Challenge Created"

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
      url: params[:url]
      )

      flash[:success]= "Challenge Updated"

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