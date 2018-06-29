class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.find_by(username: params[:student][:username])
    if @student && @student.authenticate(params[:student][:password])
      session[:student_id] = @student.id
      redirect_to student_path(@student)
    else
      redirect_to signin_path
    end
  end

  def destroy
    session.delete :student_id
    redirect_to root_url
  end
end
