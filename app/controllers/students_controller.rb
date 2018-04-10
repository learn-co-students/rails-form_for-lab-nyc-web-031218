class StudentsController < ApplicationController


  def index
    @students = Student.all
    # byebug

  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student.id)

  end

  def edit
    @student = Student.find(params[:id])


  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path(@student.id)

  end


end
