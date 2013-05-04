require 'spec_helper'

describe DsaCodebreakerGame do
  it 'should print out name of the game' do
    STDOUT.should_receive(:puts).with("")
  end
end