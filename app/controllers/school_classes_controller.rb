class SchoolClassesController < ApplicationController

  # def index
  #   @school_classes = SchoolClass.all
  # end

  def show
    # Might need to go a level deeper...aka params[:school][:id]
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # mass assign with a hash ---- strong params
    @school_class = SchoolClass.create(params[:school_class])

    # redirect_to school_class_path(@school_class)
    redirect_to @school_class
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])

    # redirect_to school_class_path(@school_class)
    redirect_to @school_class
  end

end
