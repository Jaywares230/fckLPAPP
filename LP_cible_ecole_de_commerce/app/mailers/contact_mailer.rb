class ContactMailer < ApplicationMailer
default from: "studentsfromthp@gmail.com"

	def contact(user)
		@user = user
    	mail(to: @user.email, subject: 'Newsletter')
	end
	
end
