#require 'pry'
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  

  def new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    id = @student.id
    #binding.pry
    #byebug
    render :action => "show"
  end

  def show
    @student = Student.find(params[:id])
    byebug
  end

  private
  def student_params(*args)
		params.require(:student).permit(*args)
	end
end
