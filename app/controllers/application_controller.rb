class ApplicationController < ActionController::Base
  helper_method :current_student


  def rootmaker
    if session[:student_id].nil?
      redirect_to login_path
    end
  end

# memoization
  def current_student
    if @current_student
      @current_student
    else
      @current_student = Student.find(session[:student_id])
    end
  end
end
