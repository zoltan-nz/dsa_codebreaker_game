module DsaCodebreakerGame

  class Code < Array

    #Available colours red(R), orange (O), yellow (Y), green (G), blue (B), Indigo (I), and violet (V).
    COLORS = ['R', 'O', 'Y', 'G', 'B', 'I', 'V']

    def initialize
      4.times do
        self << randomizer
      end
    end

    def randomizer
      COLORS[rand(0..6)]
    end

  end

end
