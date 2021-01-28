require_relative "../view/menu.rb"

class Player < Menu
  attr_accessor :name, :sign 

  #On commence par initializer
    def initialize (player_name, player_sign)
      @name = player_name
      @sign = player_sign
    end

  #Le joueur effectue une action
    def action
      puts "A toi, #{@name} ! Où veux-tu placer ton pion ?"
      print "> "
      position = gets.chomp
      return position
    end

  #Quand la partie est terminée, on sait quel joueur a gagné !
    def end
      puts "Bien joué #{@name} ! Tu viens d'écraser ton adversaire !"
    end


end