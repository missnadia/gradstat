class GoalsController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update]

  def new
    @goal = Goal.create(goal_params)
    redirect_to student_path(@goal.student)
  end

  def new
    @goal = Goal.new
  end

  def show
  end

  def edit
  end

  def create
    @goal = Goal.create(goal_params)
    if @goal.save
      redirect_to goal_path(@goal)
    else
      render :new
    end
  end

  def update
    if @goal.update(goal_params)
      redirect_to goal_path(@goal)
    else
      render :edit
    end
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(
      :hours_spent
      :completed,
      :date
    )
  end
end
