class ConfirmMailer < ApplicationMailer

    def send_mail(user)
        @user = user
        puts user
        mail to: @user.email, subject: "Chào mừng bạn đến với trang web của chúng tôi", from: "Admin@bookstore.com" 
    end
end
