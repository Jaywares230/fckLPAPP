require 'instabot'

class BotInsta
	def perform


Config.setup do |set|
  set.username             = 'studentsfromthp'
  set.password             = 'Thpsession4'
  set.tags                 = %w[THP TheHackingProject Dev Ruby RubyOnRails Montpellier Informatique Web Application Freelance Autoentrepreneur Code peerlearning RoR Rails html css js]
  
  # set.use_proxy            = true # => it's important to enable the proxy usage
  # set.proxy                = ["localhost",8888] # without username and password
  # set.proxy                = ["localhost",8000,"USERNAME","PASSWORD"] # with username and password
  
  # set.use_tor              = true # default is false

  set.wait_per_action      = 5 * 60
  set.max_like_per_day     = 50
  set.max_follow_per_day   = 50
  set.max_unfollow_per_day = 50
  set.max_comment_per_day  = 50
  set.log_status           = true
  set.infinite_tags        = true
  set.add_tag_per_post     = 5
  set.print_banner         = true
  set.pre_load             = false

  set.unwanted_list        = []
  set.white_list_users     = []

  set.comments             = [
    %w[Apprend à coder en 2 mois avec The Hacking Project https://www.thehackingproject.org/],
    %w[Apprend à créer une application web avec The Hacking Project https://www.thehackingproject.org/],
    %w[The Hacking Projet https://www.thehackingproject.org/],
    %w[Apprend à coder avec la formation gratuite THP https://www.thehackingproject.org/],
    %w[The hacking project révolutionne l'apprentissage du code https://www.thehackingproject.org/]
  ]
end

bot = Instabot.new
bot.mode(:infinite)
	end
end
