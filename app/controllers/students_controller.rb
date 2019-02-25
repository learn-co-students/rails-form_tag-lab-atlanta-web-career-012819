class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:last_name,:first_name)
  end
end
