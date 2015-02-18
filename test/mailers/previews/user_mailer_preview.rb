# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def registration_mail_preview
    UserMailer.registration_email(User.first)
  end
end
