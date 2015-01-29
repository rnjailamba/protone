class CompetitionsController < ApplicationController
  before_action :set_competition, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @competitions = Competition.all
    respond_with(@competitions)
  end

  def show
    respond_with(@competition)
  end

  def new
    @competition = Competition.new
    respond_with(@competition)
  end

  def edit
  end

  def create
    @competition = Competition.new(competition_params)
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

    def competition_params
      params.require(:competition).permit(:name, :description, :collegename, :money)
    end
end
