class ChartsController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update]

  def index
    Course.all
  end

  def new
    @chart = Chart.new
  end

  def show
  end

  def edit
  end

  def create
    @chart = Chart.create(chart_params)
    if @chart.save
      redirect_to chart_path(@chart)
    else
      render :new
    end
  end

  def update
    if @chart.update(chart_params)
      redirect_to chart_path(@chart)
    else
      render :edit
    end
  end

  private

  def set_chart
    @chart = Chart.find(params[:id])
  end

  def chart_params
    params.require(:chart).permit(
      :date
    )
  end
end
