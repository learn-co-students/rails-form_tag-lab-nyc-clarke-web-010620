class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  # def create
  #   Student.create(first_name: params[:first_name], last_name: params[:last_name])
  #   redirect_to new_student_path
  # end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  # def student_params
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
