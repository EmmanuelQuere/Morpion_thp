class Menu
  attr_accessor :col_A, :col_B, :col_C

  def initialize
    @col_A =[" ", " ", " "]
    @col_B =[" ", " ", " "]
    @col_C =[" ", " ", " "]
  end
    
  #Affichage et enregistrement des noms de joueurs.
  def start_player1
    puts "Bienvenue dans ce supeeer Morpions !!"
    puts "Quel est le prénom du joueur 1 ?"
    print "> "
    player1_name = gets.chomp
    puts "Super ! Salut #{player1_name} !"
    puts
    return player1_name
  end

  def start_player2
    puts "Et celui du joueur 2 ?"
    print "> "
    player2_name = gets.chomp
    puts "Salut à toi aussi #{player2_name}"
    puts
    puts "Initialisation de la partie en cours..."
    puts "."
    puts "."
    puts "."
    return player2_name
  end

  #Affichage grille de jeu.
  def board
    system 'clear'
    puts "Plateau de jeu :\n\n "
    puts "     A         B         C"
    puts "          |         |          "
    puts "          |         |          "
    puts "1    #{@col_A[0]}    |    #{@col_B[0]}    |    #{@col_C[0]}     "
    puts "          |         |          "
    puts "          |         |          "
    puts " " + "-" * 29
    puts "          |         |          "
    puts "          |         |          "
    puts "2    #{@col_A[1]}    |    #{@col_B[1]}    |    #{@col_C[1]}     "
    puts "          |         |          "
    puts "          |         |          "
    puts " " + "-" * 29
    puts "          |         |          "
    puts "          |         |          "
    puts "3    #{@col_A[2]}    |    #{@col_B[2]}    |    #{@col_C[2]}     "
    puts "          |         |          "
    puts "          |         |          "
  end

  #Application visuelle des actions des joueurs.
  def transform_board (position, player_sign)
      position_action = position.upcase
      case position_action
      when "A1"
        if @col_A[0] == " " then @col_A[0] = player_sign
        else return false
        end
      when "A2"
        if @col_A[1] == " " then @col_A[1] = player_sign
        else return false
        end
      when "A3"
        if @col_A[2] == " " then @col_A[2] = player_sign
        else return false
        end
      when "B1"
        if @col_B[0] == " " then @col_B[0] = player_sign
        else return false
        end
      when "B2"
        if @col_B[1] == " " then @col_B[1] = player_sign
        else return false
        end
      when "B3"
        if  @col_B[2] == " " then @col_B[2] = player_sign
        else return false
        end
      when "C1"
        if @col_C[0] == " " then @col_C[0] = player_sign
        else return false
        end
      when "C2"
        if @col_C[1] == " " then @col_C[1] = player_sign
        else return false
        end
      when "C3"
        if @col_C[2] == " " then @col_C[2] = player_sign
        else return false
        end
      else return false
      end
  end
end

#binding.pry