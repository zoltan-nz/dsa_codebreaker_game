require 'spec_helper'
require 'dsa_codebreaker_game'

module DsaCodebreakerGame



  describe Code do

    let(:code) {Code.new}

    it 'should generate an array with 4 random colours' do
      code.should_be Array
    end
  end

end