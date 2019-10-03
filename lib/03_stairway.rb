def jeu

	stair = 0
	round = 0

	while stair < 10

		puts "Lancez le dés : tapez sur Enter"
		print "> "
		input = gets.chomp
		dice = rand(1..6)
		round += 1
		puts "\nVous avez fait un #{dice}\n"

		if dice == 5 || dice == 6 
			stair += 1
			puts "\nVous avancez d'une marche"
			puts "=================== Vous etes sur la marche n°#{stair}"
		end

		if dice == 1
			if stair > 0
				stair -= 1
			end
			puts "\nvous descendez d'une marche"
			puts "=================== Vous etes sur la marche n°#{stair}"
		end

		if dice == 2 || dice == 3 || dice == 4
			puts "\nVous n'avancez pas"
			puts "=================== Vous etes sur la marche n°#{stair}"	
		end	
	end

	puts ""
	puts "*************************"
	puts "* BRAVO VOUS AVEZ GAGNE *"
	puts "*************************"
	puts "Vous avez fait #{round} tours"

	return round
end

def jeu_auto

	stair_auto = 0
	round_auto = 0
	
	while stair_auto < 10

		dice_auto = rand(1..6)
		round_auto += 1

		if dice_auto == 5 || dice_auto == 6 
			stair_auto += 1
		end

		if dice_auto == 1 && stair_auto > 0
			stair_auto -= 1
		end
	end

	return round_auto
end

def average_finish_time

	moy = 0

	100.times do |n|
		moy = (moy + jeu_auto)
	end
	puts "Le nombre de tours moyen pour gagner est de #{moy/100}"
end

#jeu
#jeu_auto
average_finish_time 



