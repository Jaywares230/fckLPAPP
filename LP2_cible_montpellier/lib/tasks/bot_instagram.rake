desc "Bot instagram"
task bot_instagram: :environment do
	BotInsta.new.perform# ici mettre le code que l'on veut run
end