require "./player.rb"
require 'set'

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

    def take_turn(player)
        puts "enter a single letter"
        input = gets.chomp
        @fragment += input
    end

    # def word_checker?(word)
    #     @dictionary.include?(word)
    # end

    def valid_play?(str)
        alphabet = ("a".."z").to_a
    end

end