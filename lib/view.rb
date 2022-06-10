  class View
  
    def self.clear
      system('clear')
    end
    
    def self.menu
      puts ""
      puts "1. Afficher la liste des items"
      puts "2. Ajouter un item"
      puts "4. Je veux quitter l'app"
      return gets.chomp.to_i
    end

end