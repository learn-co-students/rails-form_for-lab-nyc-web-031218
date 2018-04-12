class SchoolClassesController < ApplicationController

def new
  @school_class = SchoolClass.new
end

def create
  @school_class = SchoolClass.create(sc_params(:title, :room_number))
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
  @school_class.update(sc_params(:title, :room_number))
  redirect_to @school_class
end



private
def sc_params(*arg)
  params.require(:school_class).permit(*arg)
end

end
