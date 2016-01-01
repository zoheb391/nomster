class NotificationMailer < ActionMailer::Base
  default from: "no-reply@example.com"

	def comment_added
		mail(to: "zsalam2@illinois.edu",
		subject: "A comment has been added to your place" )
	end
end

