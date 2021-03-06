class ClassRegistrationsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_class_registration, only: [:show, :edit, :update, :destroy]

    def index 
        if params[:filter_by_time_and_date] == "Upcoming"
            @class_registrations = current_user.class_registrations.upcoming
        elsif params[:filter_by_time_and_date] == "Past"
            @class_registrations = current_user.class_registrations.past
        else
            @class_registrations = current_user.class_registrations
        end  
    end 

    def show 
        @dance_class = @class_registration.dance_class
        @studio = @class_registration.dance_class.studio
    end 

    def new 
        @dancer = current_user 
        @dance_class = DanceClass.find(params[:dance_class_id])
        @class_registration = @dance_class.class_registrations.build
    end

    def create 
        @class_registration = current_user.class_registrations.build(class_registration_params)
        if @class_registration.save 
            redirect_to class_registration_path(@class_registration)
        else
            render :new 
        end 
    end

    def edit 
    end 

    def update 
        if @class_registration.update(class_registration_params)
            redirect_to class_registration_path(@class_registration)
        else
           render :edit   
        end
    end 

    def destroy 
        @class_registration.destroy
        redirect_to class_registrations_path
    end

    private

    def set_class_registration
        @class_registration = current_user.class_registrations.find(params[:id])
    end

    def class_registration_params 
        params.require(:class_registration).permit(:user_id, :dance_class_id, :injuries, :preferred_pronouns, :first_name, :last_name)
    end
end
