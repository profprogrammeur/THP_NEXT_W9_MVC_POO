  require './models/item'
  require 'terminal-table'

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
      # puts "2. Ajouter un item"
      puts "4. Je veux quitter l'app"
      return gets.chomp.to_i
    end

    def self.menu_pick_one
      puts ""
      puts "Choisir un numero"
      return gets.chomp.to_i
    end


    def self.all(items)
      self.clear     
      puts ""
      puts "Voici la liste des items :" 
      puts ""
      rows = []
      items.each do |item|
        rows << [item["id"], item["Name"]] 
      end
      table = Terminal::Table.new :rows => rows
      puts table
    end

    def self.one(item)
      self.clear     
      puts ""
      puts "Voici ton item :" 
      rows = []
      rows << [item["id"], item["Name"],item["price"],item["quantity"],item["brand"]] 
      table = Terminal::Table.new :rows => rows
      puts table

    end

end


# puts "#{item["id"]} #{item["Name"]} #{item["price"]} #{item["quantity"]} #{item["brand"]}"
# rows << [item["id"], item["Name"],item["price"],item["quantity"],item["brand"]] 
#  rows << :separator     

# puts CSV.parse(File.read("db/items.csv"),headers: true)

# @controller.create_gossip
