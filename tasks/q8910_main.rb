puts "tache 9"
print "Entrez une température en Celsius : "
x = gets.chomp.to_i

y = (x * 9/5) + 32

puts "#{x} degrés Celsius égale à #{y} degrés Fahrenheit."

puts "tache 10"
print "Entrez un mot : "
x = gets.chomp.downcase

y = x.reverse
if x == y
  puts "'#{x}' est un palindrome."
else
  puts "'#{x}' n'est pas un palindrome."
end
