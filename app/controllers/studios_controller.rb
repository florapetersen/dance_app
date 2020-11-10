class StudiosController < ApplicationController
    def new 
        @studio = Studio.new
    end

    def index
    end

    def create 
        @studio = Studio.new(studio_params)
        if @studio.save 
            redirect_to studio_path(@studio)
        else 
            render :new 
        end 
    end

    def show
    end

    private 

    def studio_params
        params.require(:studio).permit(:name, :address, :city, :state, :zip_code, :contact_phone, :contact_email)
    end
end
