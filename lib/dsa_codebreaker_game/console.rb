require 'readline'

module DsaCodebreakerGame
  class Console

    def initialize(output)
      @output = output
    end

    def welcome(gamer)
      @output.puts '***** Welcome in the Amazing DSA Codebreaker Game ****'
      @output.puts 'This is a variation of MasterMind game. You have to find at least two colours for winning.'
      @output.puts 'Colours: R, O, Y, G, B, I, V ---- Exit from the game if your input contains 0 (zero).'
      @output.puts 'Example guess: OYGB'
      @output.puts "Let's start!"
      @output.puts '-----------------------------------------------------------------------------'
      @output.puts "Lives: #{gamer.lives}"
    end

    def input
      Readline::readline 'What is your guess? > ', true
    end

    def printer(code, guessed, clues)
      @output.puts "Code: #{code}, Guessed: #{guessed}, Clue: #{clues}"
    end

    def exitmessage
      @output.puts "Thanks for your game. See you soon!"
    end

    def duplicatepatches
      @output.puts "Hey, duplicate patches are not allowed and please re enter a new code patch."
    end

  end
end