class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.find_by(username: params[:student][:username]) || Student.from_omniauth(env['omniauth.auth'])
    if @student && @student.authenticate(params[:student][:password])
      session[:student_id] = @student.id
      redirect_to root_url
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_url
  end
end
