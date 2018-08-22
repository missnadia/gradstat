class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    if auth_hash
      if student = Student.find_by(email: auth_hash.info.email)
        session[:student_id] = student.id
        redirect_to courses_url
      else
        student = Student.from_omniauth(auth_hash)
        session[:student_id] = student.id
        redirect_to courses_url
      end
    elsif student = Student.find_by(email: params[:student][:email])
      if student && student.authenticate(params[:student][:password])
        session[:student_id] = student.id
        redirect_to courses_url
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_url
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
