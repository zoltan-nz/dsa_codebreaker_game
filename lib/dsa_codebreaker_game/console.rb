require 'readline'

module DsaCodebreakerGame
  class Console

    def welcome(gamer)
      puts ''
      puts '***** Welcome in the Amazing DSA Codebreaker Game ****'
      puts ''
      puts 'This is a variation on the MasterMind game. You have to figure out all four colours in right sort for winning.'
      puts 'Colours: R, O, Y, G, B, I, V ---- Exit from the game if your input contains 0 (zero).'
      puts 'Only the first 4 characters will be analyzed.'
      puts 'Example guess: OYGB'
      puts "Let's start!"
      puts ''
      puts '-----------------------------------------------------------------------------'
      puts ''
    end

    def input(q='')
      str = 'Enter a sequence a 4 character sequence from ROYGBIV or 0 to exit > '
      str = '> ' if q == "exit"
      Readline::readline str, true
    end

    def printer(figured_out, clues, gamer)
      puts "Lives: #{gamer.lives}"
      puts "Code: #{figured_out.join(' ')}, Guessed: #{gamer.guess.join(' ')}, Clue: #{clues}"
    end

    def exitmessage
      puts "Thanks for your game. See you soon!"
    end

    def duplicatepatches
      puts "Hey, duplicate patches are not allowed and please re enter a new code patch."
    end

    def lost(code)
      puts "YOU LOOSE! The code was: #{code}"
    end

    def win
      puts "**** CONGRATULATION! YOU WIN! ****"
    end

    def want_to_play_again?
      print "Do you want to play again (Y/N)?"
      loop do
          i = input("exit")
          case i.capitalize
            when "Y"
              return true
            when "N"
              return false
            else
             print "Sorry? (Y/N)"
          end
      end
    end

  end
end