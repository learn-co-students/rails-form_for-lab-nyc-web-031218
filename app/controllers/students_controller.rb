class StudentsController < ApplicationController
  before_action :find_students, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to @student
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to @student
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
  def find_students
    @student = Student.find(params[:id])
  end
end
