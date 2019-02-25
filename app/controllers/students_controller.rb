class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    #Post.create(title: params[:post][:title], description: params[:post][:description])
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end
