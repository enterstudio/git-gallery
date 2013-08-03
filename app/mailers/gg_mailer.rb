class GgMailer < ActionMailer::Base
  default from: "gitgallery@gmail.com"

  def registration_confirmation(user)
    @user = user
    # attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => @user.email, :subject => "Registration Confirmation")
  end
end
