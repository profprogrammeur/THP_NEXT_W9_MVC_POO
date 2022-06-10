require_relative 'controllers/controller'
require_relative 'views/view'

class Router
  # attr_accessor :controller
  def initialize
    View.clear
    @controller =  Controller.new
  end 

  def perform 
    puts "BIENVENUE DANS L'INVENTAIRE"

    while true
      case View.menu 
      when 1
        @controller.index_items
      when 4
        View.bye
        break 
      else
       View.input_error

      end
    end
  end
end





 # View.menu

      #on affiche le menu
      # puts "1. Afficher la liste des items"
      # puts "2. Ajouter un item"
      # puts "4. Je veux quitter l'app"
      # params = gets.chomp.to_i #on attend le choix de l'utilisateur
        #  @controller.create_item(params)