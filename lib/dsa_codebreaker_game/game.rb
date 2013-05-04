module DsaCodebreakerGame

  class Game

    def initialize
      @code = Code.new
      @gamer = Gamer.new
      @console = Console.new(STDOUT)
    end

    def start
      @console.welcome(@gamer)
      looper
    end

    def looper

      code, guessed = "_ _ _ _"
      clues = 0

      loop do

        @console.printer(code, guessed, clues)

        g = @console.input

        if @gamer.history.include?g
          @console.duplicatepatches
          redo
        else
          @gamer.guess = g
        end

        if @gamer.guess.include?("0")
          @console.exitmessage
          exit
        end

        evaluate

      end
    end

    #Inspiration from here: https://gist.github.com/mariozig/4512157
    def evaluate

    end


    def close_match

    end

    def exact_match

    end

  end

end