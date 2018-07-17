class ChartsController < ApplicationController
  before_action :set_course, only: [:show]

  def index
    @charts = Chart.all
  end

  def show
  end

  private

  def set_chart
    @chart = Chart.find(params[:id])
  end

  def chart_params
    params.require(:chart).permit(
      :student_id,
      :course_id
    )
  end
end
