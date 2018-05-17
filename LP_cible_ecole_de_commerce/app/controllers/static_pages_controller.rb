class StaticPagesController < ApplicationController
	def home
	end

    def subscribe
        user = User.new(email: params['email'], newsletter: false)
        user.save
        ContactMailer.contact(user).deliver_now
    end
      
    def confirm_subscription
      @user = User.find(params[:id])
      @user.update(newsletter: true)
    end
    
    def unsubscribe
      @user = User.find(params[:id])
      @user.update(newsletter: false)
    end

end
