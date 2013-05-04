module DsaCodebreakerGame

  class Gamer

    attr_accessor :lives, :guess, :history

    def initialize
      @lives = 8
      @history = []
      @guess = ['_','_','_','_']
    end

    def lost_a_life
      @lives -= 1
    end

    def died?
      @lives < 0
    end

    def guess=(guess)
      @history << guess
      @guess = guess.chomp.split('')
    end

    def guess
      @guess
    end

  end

end