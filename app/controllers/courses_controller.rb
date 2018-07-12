class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def show
  end

  def edit
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course)
    else
      render :edit
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(
      :student_id,
      :course_id,
      :name,
      :time_spent,
      :completed
    )
  end
end
