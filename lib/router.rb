# require 'lib/controller'
require_relative 'controller'
require_relative 'view.rb'

class Router
  # attr_accessor :controller

#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    View.clear
    @controller =  Controller.new
  end 



#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    puts "BIENVENUE DANS L'INVENTAIRE"

    while true

      # View.menu

      #on affiche le menu
      # puts "1. Afficher la liste des items"
      # puts "2. Ajouter un item"
      # puts "4. Je veux quitter l'app"
      # params = gets.chomp.to_i #on attend le choix de l'utilisateur
        #  @controller.create_item(params)

      case View.menu #en fonction du choix
      when 1
        puts "Voici la liste des items" 
        # @controller.create_gossip
            table = CSV.parse(File.read("db/items.csv"),headers: true)
        puts table

      when 4
        puts "À bientôt !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end