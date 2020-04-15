class MessagesController < ApplicationController
    #Note, this page will require the user to be signed in.SS
    def messages()
        respond_to do |format|
            format.html do
                if(user_signed_in?)
                render :messages
                
                else
                    flash[:error] = "You must be signed in to access messages."
                    redirect_to home_url
                end
             end

        end
    end
end
