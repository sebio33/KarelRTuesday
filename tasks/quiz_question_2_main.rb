puts "Donnez-moi une valeur entre 1 et 100"
	x = gets.chomp.to_i  
	
if x <= 100
	if x >= 1
		notes = Array.new(200) { rand(1..100) }
		plus_grand = notes.count { |note| note > x }
		plus_petit = notes.count { |note| note < x }
		egales = notes.count { |note| note == x }
		puts "Le nombre de valeurs qui sont plus grands que #{x} est: #{plus_grand}"
		puts "Le nombre de valeurs qui sont plus petits que #{x} est: #{plus_petit}"
		puts "Le nombre de valeurs qui sont égales à #{x} est: #{egales}"
	end
end


