School_classclass SchoolClassesController < ApplicationController

  def index
      @school_classes = School_class.all
    end

    def show
      @school_class = School_class.find(params[:id])
    end

    def new
      @school_class = School_class.new
    end

    def create
      @shool_class = School_class.new
      @school_class.first_name = params[:first_name]
      @school_class.last_name = params[:last_name]
      @school_class.save
      redirect_to school_class_path(@school_class)
    end

    def edit
      @school_classs = School_class.find(params[:id])
    end

    def update
      @shool_class = School_class.find(params[:id])
      @school_class.update(params.require(:School_class))
      redirect_to school_class_path(@school_class)
    end


end
