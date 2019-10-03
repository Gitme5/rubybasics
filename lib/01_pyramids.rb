
def wtf_pyramid
	print "Choisissez un nombre impair d'étages de pyramide > "
	level = gets.chomp.to_i

	while level%2 ==0
		puts "veuillez saisir un nombre impair svp"
		print "> "

		level = gets.chomp.to_i
	end

	pyramid = []

	(level/2 + 1).times do |n|
		a = (" " * (level-1)) + ("#" * (n+1)) + ("#" * n) 
		pyramid << [a]
		level -= 1
	end	

	puts pyramid
	pyramid.pop()
	puts pyramid.reverse

end

def full_pyramid
	print "Nombre d'étages de la pyramide > "
	level = gets.chomp.to_i

	pyramid = []

	level.times do |n|
		a = (" " * (level-1)) + ("#" * (n+1)) + ("#" * n) 
		pyramid << [a]
		level -= 1
	end	
	puts pyramid

end


def half_pyramid
	print "Nombre d'étages de la pyramide > "
	level = gets.chomp.to_i

	i = 1
	n = 0

	while i < level + 1
		print " " * (level - i)
		puts "#" * i
		n -= 1
		i += 1
	end
end

# half_pyramid
# full_pyramid
wtf_pyramid