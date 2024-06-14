noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]

while true
  print "Entrez un nom (ou 'q' pour quitter) : "
  nom = gets.chomp
  if nom.downcase == 'q'
    puts "Programme terminé."
  end
  if noms.any? { |n| n.casecmp?(nom) }
    puts "Présent"
  else
    puts "Absent"
  end
end
