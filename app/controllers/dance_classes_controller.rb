class DanceClassesController < ApplicationController
    def new
        @dance_class = DanceClass.new
    end

    def index
    end

    def create 
        @dance_class = DanceClass.new(dance_class_params)
        if @dance_class.save 
            redirect_to dance_class_path(@dance_class)
        else 
            render :new 
        end 
    end

    private

    def dance_class_params
        params.require(:dance_class).permit(:name)
    end

end
