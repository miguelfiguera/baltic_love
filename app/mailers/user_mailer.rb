class UserMailer < ApplicationMailer
    def new_user_mail
        @user_data=params[:user_data]

        mail(to:'usaandbaltics@gmail.com', subject: "New Client")
    end

end
