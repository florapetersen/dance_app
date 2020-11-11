class DanceClassesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_dance_class, only: [:edit, :update, :destroy]
    
    def index
        @dance_classes = DanceClass.all
    end

    def show 
        @dance_class = DanceClass.find(params[:id])
    end

    def new
        @dance_class = DanceClass.new
    end

    def create 
        @dance_class = current_user.dance_classes_as_teacher.build(dance_class_params)
        if @dance_class.save 
            redirect_to dance_class_path(@dance_class)
        else 
            render :new 
        end 
    end

    private

    def dance_class_params
        params.require(:dance_class).permit(:name, :style_id, :studio_id, :day_id, :time, :ampm, :duration)
    end

    def set_dance_class
        @dance_class = current_user.dance_classes.find(params[:id])
    end 
end 
