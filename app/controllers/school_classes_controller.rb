class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    if @school_class.valid?
      redirect_to @school_class
    else
      flash[:errors] = @school_class.errors.full_messages
      redirect_to edit_school_class_path(@school_class)
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)

    if @school_class.valid?
      redirect_to @school_class
    else
      flash[:errors] = @school_class.errors.full_messages
      redirect_to edit_school_class_path(@school_class)
    end
  end

  def destroy
    SchoolClass.destroy(params[:id])
    redirect_to school_classes_path
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
