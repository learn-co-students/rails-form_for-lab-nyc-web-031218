class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
    @students = Student.create(student_params)
    redirect_to student_path(@students)
  end

  def edit
    @students = Student.find(params[:id])
  end

  def update
    @students = Student.find(params[:id])
    @students.update(student_params)
    redirect_to student_path(@students)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
