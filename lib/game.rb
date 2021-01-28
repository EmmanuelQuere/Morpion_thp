require_relative "player"
require_relative "../view/menu.rb"


require 'bundler'
Bundler.require

class Game < Player
  attr_accessor :player1, :player2, :menu

  #Initialisation d'une nouvelle partie.
  def initialize
    @menu= Menu.new 
    @player1 = Player.new(menu.start_player1, "X")
    @player2 = Player.new(menu.start_player2, "O")
  end

  #Permet de savoir si il y a eu un vainqueur, ou non.
  def is_over?
    x ="XXX"
    o ="OOO"

    col_A_array = menu.col_A.join
    col_B_array = menu.col_B.join
    col_C_array = menu.col_C.join
    lin_1_array = menu.col_A[0] + menu.col_B[0] + menu.col_C[0]
    lin_2_array = menu.col_A[1] + menu.col_B[1] + menu.col_C[1]
    lin_3_array = menu.col_A[2] + menu.col_B[2] + menu.col_C[2]
    dia_1_array = menu.col_A[0] + menu.col_B[1] + menu.col_C[2]
    dia_2_array = menu.col_A[2] + menu.col_B[1] + menu.col_C[0]
    if (col_A_array == x) || (col_B_array == x) || (col_C_array == x) || (lin_1_array == x) || (lin_2_array == x) || (lin_3_array == x) || (dia_1_array == x) || (dia_2_array == x)
      return true
    elsif (col_A_array == o) || (col_B_array == o) || (col_C_array == o) || (lin_1_array == o) || (lin_2_array == o) || (lin_3_array == o) || (dia_1_array == o) || (dia_2_array == o)
      return true
    else
      return false
    end
  end

  #L'action du joueur est appliquée sur la grille de jeu
  def apply_action (position, player_sign)
      menu.transform_board(position, player_sign)
  end

  #Détermine les actions de jeu.
  def playing
    i=0
    t=0
    self.menu.board
    while ((self.is_over? == false) || (t <= 7))
      if i==0
        loop do 
          worked = self.apply_action(player1.action, player1.sign)
        break if worked != false
        end
        i=1
        self.menu.board
        t+=1
        puts t
      else
        loop do
          worked = self.apply_action(player2.action, player2.sign)
        i=0
        break if worked != false
        end
        self.menu.board
        t+=1
      end
    end
    if t == 7
      puts "Match nul !"
    elsif i == 1
      self.player1.end
    else
      self.player2.end
    end
  end

end



