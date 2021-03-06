class SessionsController < ApplicationController

  def new
  end

  def create
    @student = Student.find_by(username: params[:username])

    if @student && @student.authenticate(params[:password])
      session[:student_id] = @student.id
      redirect_to root_path
    else
      flash.notice = "Username and password do not match"
      render :new
    end
  end

  def destroy
    session.clear
    flash.notice = "Mischief Managed"
    redirect_to login_path
  end

end
