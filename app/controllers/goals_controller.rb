class GoalsController < ApplicationRecord
  def new
    @goal = Goal.create(goal_params)
    redirect_to student_path(@goal.student)
  end

  private

  def goal_params
    params.require(:goal).permit(
      :student_id,
      :course_id,
      :attained,
      :date
    )
  end
end
