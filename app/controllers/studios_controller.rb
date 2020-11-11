class StudiosController < ApplicationController
    before_action :authenticate_user!
    before_action :set_studio, only: [:edit, :update, :destroy]
    
    def index
        @studios = Studio.all
    end

    def show 
    end
    
    def new 
        @studio = Studio.new
    end

    def create 
        @studio = current_user.studios_as_studio_owner.build(studio_params)
        if @studio.save 
            redirect_to studio_path(@studio)
        else 
            render :new 
        end 
    end

    private 

    def studio_params
        params.require(:studio).permit(:name, :address, :city, :state, :zip_code, :contact_phone, :contact_email)
    end

    def set_studio
        @studio = current_user.studios.find(params[:id])
    end
end
