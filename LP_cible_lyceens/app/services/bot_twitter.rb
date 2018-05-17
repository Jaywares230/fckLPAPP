
require 'pry'

class BotTwitter
	def perform
		require 'twitter'

		while true
		begin
# quelques lignes qui enregistrent les clés d'APIs
config = {
  consumer_key:         "YOURKEY",
  consumer_secret:      "YOURKEY",
  access_token:         "YOURKEY",
  access_token_secret:  "YOURKEY"
}

rClient = Twitter::REST::Client.new config
		sClient = Twitter::Streaming::Client.new(config)

		# topics to watch
		topics = ['#BAC','#bachelier',' bacheliere','#baccalauréat','#lycée']
		sClient.filter(:track => topics.join(',')) do |tweet|
			if tweet.is_a?(Twitter::Tweet)
			  puts tweet.text 
			  rClient.fav tweet
			end
		end
	rescue
		puts 'error occurred, waiting for 5 seconds'
		sleep 5
	end

end
end 
end 