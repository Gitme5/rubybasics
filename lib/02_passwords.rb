def signup
	puts "Veuillez choisir un mot de passe"
	print "> "

	pswd = gets.chomp
	return pswd	
end

def login (pswd)
	
	puts ""
	puts "Veuillez saisir votre mot de passe"
	print "> "
	
	value = gets.chomp

	while value != pswd
		puts ""
		puts "Mauvais mot de passe"
		puts "Veuillez saisir votre mot de passe"
		print "> "

		value = gets.chomp
	end

end

def welcome_screen
	puts ""
	puts "** Welcome in the secret zone **"
	puts "I took control on your computer !!"
	puts "!! SURPRISE !!"
end

def perform
	pswd = signup
	login (pswd)
	welcome_screen
end

perform