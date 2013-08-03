require 'spec_helper'

describe QuantumRandom::Game do

  it { should be }

  describe :class_methods do
    let(:klass) { QuantumRandom::Game }

    describe :get do
      subject { klass.run }
      it { should == true }
    end # run

  end # class_methods


end
