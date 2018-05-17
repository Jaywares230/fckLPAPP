class WeeklyNewsletter

    def send_newsletter
        @users = User.all    
        @users.each do |user|   
            if user.newsletter == true 
                ContactMailer.contact(user).deliver_now
            end
        end
    end

    def perform
        send_newsletter
    end
end

