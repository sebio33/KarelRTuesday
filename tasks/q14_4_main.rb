
x = rand(1..100)
i = 0
e = 0
while i != x
	i = gets.chomp.to_i
	e = e+1
	if i > x
		puts "too high"
	end
	if i < x
		puts "too low"
	end
	
end
puts "you win"
puts "this took #{e} tries"