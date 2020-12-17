class SignUpsController < ApplicationController

    def new
        @sign_up = SignUp.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        @sign_up = SignUp.create(params.require(:sign_up).permit(:camper_id, :activity_id, :time))
        if @sign_up.valid?
            redirect_to camper_path(@sign_up.camper)
        else
            flash[:errors] = @sign_up.errors.full_messages
            redirect_to new_sign_up_path
        end
    end

end
