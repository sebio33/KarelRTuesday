puts "Donnez-moi 5 valeurs"
    num1 = gets.chomp.to_i  
    num2 = gets.chomp.to_i  
    num3 = gets.chomp.to_i  
    num4 = gets.chomp.to_i  
    num5 = gets.chomp.to_i 
matrice = [num1, num2, num3, num4, num5]
puts "Les valeurs en ordre croissant sont:"
puts matrice.sort