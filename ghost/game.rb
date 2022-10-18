require 'set'
require "./player.rb"

class Game

    attr_accessor :fragment
    def initialize(name_1, name_2)
        words = File.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(words)

        @player_1 = Player.new(name_1)
        @player_2 = Player.new(name_2)

        @fragment = ""
        @current_player = @player_1
    
    end

    def next_player!
        @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1         
    end

    def valid_play?(str)
        alphabet = ("a".."z").to_a
        return false if !alphabet.include?(str)

        @dictionary.any? { |word| word.include?(@fragment + str) }
        
    end

    def take_turn(player)
        letter = @current_player.guess

    end

    

    

end