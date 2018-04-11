class SchoolClassesController < ApplicationController
  # before_action :get_school_class, only: [:show, :edit]

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  private
    def get_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
