class UserMailer < ApplicationMailer
    default from: "admin@17share.hk"

    def registration_email(user)
        @user = user
        mail(to: @user.email, subject: 'Registration Email - 17Share.hk')
    end

    def reset_password_email(user)
        @user = user
        @url  = edit_password_reset_url(@user.reset_password_token)
        mail(to: @user.email, subject: "Your password has been reset")
    end

end
