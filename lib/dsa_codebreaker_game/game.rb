module DsaCodebreakerGame

  class Game

    def initialize
      @code = Code.new
      @gamer = Gamer.new
      @console = Console.new
      @clues = 0
      @figured_out = ['_','_','_','_']
    end

    def start
      @console.welcome(@gamer)
      looper
    end

private

    def looper

      loop do
        @console.printer(@figured_out, @clues, @gamer)

        g = @console.input[0..3]

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

        @clues = 0
        @remained = 4

        evaluate

        if @gamer.died?
          @console.lost(@code.join(" "))
          again
        end

        if @remained == 0
          @console.win
          again
        end


      end


    end

    def again
      if @console.want_to_play_again?
        game = DsaCodebreakerGame::Game.new
        game.start
      else
        @console.exitmessage
        exit
      end
    end


    #Inspiration from here: https://gist.github.com/mariozig/4512157
    def evaluate

      counter = @gamer.guess.length
      @gamer.guess.each_with_index do |char, i|


        if @code[i] == char

          @figured_out[i] = char
          @remained-=1
        elsif @code.include?(char)

          @clues+=1
        else

          counter-=1
        end
      end

      @gamer.lost_a_life if counter == 0

    end

  end
end