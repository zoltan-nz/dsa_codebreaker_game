require 'spec_helper'
require 'dsa_codebreaker_game'

module DsaCodebreakerGame


  describe Code do

    let(:code) {Code.new}

    it 'should generate 4 length of array' do
      code.length.should == 4
    end
  end

end