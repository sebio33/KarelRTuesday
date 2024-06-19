puts "tache 5"
valeurs = Array.new(200) { rand(0..100) }


x = valeurs.select { |num| num.even? }.sum


puts "La somme des nombre pair est : #{x}"

valeurs = Array.new(200) { rand(0..100) }




puts "tache 6"
fr = Hash.new(0)
valeurs.each { |num| fr[num] += 1 }


pf = fr.max_by { |_, count| count }.first

puts "L'elements le plus frequent est : #{pf}"



puts "tache 7"
valeurs = (1..100).to_a

valeurs.delete_at(rand(0..99))

x = (100 * 101) / 2

y = valeurs.sum

z = x - y

puts "L'élément manquant est : #{z}"
