class CompetitionsController < ApplicationController
  before_filter :store_location
  before_action :set_competition, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show] 
  before_action :correct_user, only: [:edit, :update, :destroy]
respond_to :html, :json 

  def index
    @competitions = Competition.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    respond_with(@competitions)
  end

  def show
    respond_with(@competition)
  end

  def new

      @competition = current_user.competitions.build
      respond_with(@competition)
    


  end

  def edit
  end

  def create
    @competition = current_user.competitions.new(competition_params)
    @competition.save
    respond_with(@competition)
  end

  def update
    @competition.update(competition_params)
    respond_with(@competition)
  end

  def destroy
    @competition.destroy
    respond_with(@competition)
  end

  private

    def set_competition
      @competition = Competition.find(params[:id])
    end

    

    def correct_user
        @competition = current_user.competitions.find_by(id: params[:id])
        redirect_to competitions_path, notice: "Not authorized to edit this pin" if @competition.nil?

    end

    def competition_params
      params.require(:competition).permit(:name,:category, :description, :collegename, 
        :money, :onOff,:location,:startDate,:endDate,:organizedBy,:linkWebsite,:linkWebsite,:linkFb,:startDateText,:endDateText)
    end
end
