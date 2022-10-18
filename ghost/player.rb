class Player

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def alert_invalid_guess(letter)
        puts "#{letter} is not valid"
        puts "Use alphabet letters"
    end

    def guess
        gets.chomp.downcase
    end

    
end