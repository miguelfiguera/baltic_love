# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

def new_user_mail
    data_user= Datum.new(email:'perrosaurio@gmail.com',name:'x',last_name:'b',phone:'1234',package:'V I P',question:'a nose')

UserMailer.with(user_data:data_user).new_user_mail

end


end
