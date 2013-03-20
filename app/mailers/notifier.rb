class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def notify_email(user)
  	@user = user
  	@admin = 'andrewmelis@gmail.com'
  	mail(to: @admin, subject: "New User Registration!")
  end
end
