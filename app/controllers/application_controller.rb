class ApplicationController < ActionController::Base
  helper_method :current_student

# before_action :rootmaker
#
# def rootmaker
#
#   if session[:student_id].nil?
#     render 'sessions/new'
#   end
# end

# memoization
  def current_student
    if @current_student
      @current_student
    else
      @current_student = Student.find(session[:student_id])
    end
  end
end
