puts "Entrez les secondes (ou 0 pour quitter):"
  num = gets.chomp.to_i  


  if num == 0
    puts "Programme terminé."
  end

 
  heures = num / 3600
  minutes = (num % 3600) / 60
  secondes = num % 60

  
  if heures > 0
    puts "#{num} secondes est egale a #{heures} heures, #{minutes} minutes et #{secondes} secondes"
  else
    puts "#{num} secondes est egale a #{minutes} minutes et #{secondes} secondes"
  end
