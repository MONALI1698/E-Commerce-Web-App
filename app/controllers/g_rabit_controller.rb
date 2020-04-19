class GRabitController < ApplicationController
  def home
    respond_to do|format|
      format.html{render:home}
  end

  def user_profile
    respond_to do|format|
      format.html do
        if(user_signed_in?)
          render :user_profile
      
        else
          flash[:error] = "You must be signed in to access your user profile."
          redirect_to "/users/sign_in"
        end
      end
    end
  end


end
end