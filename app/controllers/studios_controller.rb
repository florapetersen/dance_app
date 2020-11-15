class StudiosController < ApplicationController
    before_action :authenticate_user!
    before_action :set_studio, only: [:show, :edit, :update, :destroy]
    
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

    def edit 
    end 

    def update 
        if current_user == @studio.studio_owner
            if @studio.update(studio_params)
                redirect_to studio_path(@studio)
            else
                render :edit   
            end
        else
            flash[:error] = "You can't edit someone else's studio!"
            redirect_to studio_path(@studio)
        end 
    end 

    def destroy 
        if current_user == @studio.studio_owner 
            @studio.destroy 
        else
            flash[:error] = "You can't delete someone else's studio!"
        end
        redirect_to studios_path
    end

    private 

    def studio_params
        params.require(:studio).permit(:name, :address, :city, :state, :zip_code, :contact_phone, :contact_email)
    end

    def set_studio
        @studio = Studio.find(params[:id])
    end
end
