class SchoolclassesController < ApplicationController


  def index
    @schoolclasses = Schoolclass.all
    

  end

  def show
    @schoolclass = Schoolclass.find(params[:id])
  end

  def new
    @schoolclass = Schoolclass.new

  end

  def create
    byebug
    @schoolclass = Schoolclass.create(params[:schoolclass])
    redirect_to schoolclass_path(@schoolclass.id)

  end

  def edit
    @schoolclass = Schoolclass.find(params[:id])


  end

  def update
    @schoolclass = Schoolclass.find(params[:id])
    @schoolclass.update(params[:schoolclass])

    redirect_to schoolclass_path(@schoolclass.id)

  end






end
