class UserMailer < ApplicationMailer
    default from: "admin@17share.hk"

    def registration_email(user)
        @user = user
        mail(to: @user.email, subject: 'Registration Email - 17Share.hk')
    end

end
