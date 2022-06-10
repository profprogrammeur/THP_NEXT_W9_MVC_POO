  require './models/item'
  
  class View
    
    def self.bye
      puts "À bientôt !"
    end

    def self.input_error
       puts "Ce choix n'existe pas, merci de ressayer" 
    end

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

    def self.all(items)
      self.clear
      puts ""
      puts "Voici la liste des items :" 
      puts ""
      items.each do |item|
        puts "#{item["id"]} #{item["Name"]}"
      end
    end

end


# puts CSV.parse(File.read("db/items.csv"),headers: true)

# @controller.create_gossip
