require 'spec_helper'
require 'dsa_codebreaker_game'

module DsaCodebreakerGame


  describe Code do

    let(:gamer) {Gamer.new}

    it 'should lost a life' do
      gamer.lost_a_life
      gamer.lives.should == 7
    end

    it 'should be died' do
      9.times {gamer.lost_a_life}
      gamer.died?.should == true
    end


  end

end