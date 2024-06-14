notes = Array.new(200) { rand(20..100) }

moyenne = notes.sum.to_f / notes.size


note_minimale = notes.min

note_maximale = notes.max


puts "La moyenne des notes est : #{moyenne.round(2)}"
puts "La note la plus basse est : #{note_minimale}"
puts "La note la plus haute est : #{note_maximale}"