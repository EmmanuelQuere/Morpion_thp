require_relative "lib/player.rb"
require_relative "lib/game.rb"
require_relative "view/menu.rb"


require 'bundler'
Bundler.require

jeu = Game.new

jouer = "Y"
turn = 0

while jouer == "Y"
  jeu.menu = Menu.new
  jeu.playing
  puts "Voulez-vous rejouer ? Y = Oui || N = Non"
  print "> "
  jouer = gets.chomp
  temp = jeu.player1
  jeu.player1 = jeu.player2
  jeu.player2= temp 
end