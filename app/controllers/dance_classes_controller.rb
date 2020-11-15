class DanceClassesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_dance_class, only: [:show, :edit, :update, :destroy]
    
    def index
        @dance_classes = DanceClass.all
    end

    def show 
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

    def edit 
    end 

    def update 
        if current_user == @dance_class.teacher
            if @dance_class.update(dance_class_params)
                redirect_to dance_class_path(@dance_class)
            else
                render :edit   
            end
        else
            flash[:error] = "You can't edit someone else's class!"
            redirect_to dance_class_path(@dance_class)
        end 
    end 

    def destroy 
        if current_user == @dance_class.teacher
            @dance_class.destroy
        else
            flash[:error] = "You can't delete someone else's class!"
        end
        redirect_to dance_classes_path
    end

    private

    def dance_class_params
        params.require(:dance_class).permit(:name, :style_id, :studio_id, :day_id, :start_time, :duration)
    end

    def set_dance_class
        @dance_class = DanceClass.find(params[:id])
    end 
end 
