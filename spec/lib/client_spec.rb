require 'spec_helper'

describe QuantumRandom::Client do

  it { should be }

  describe :class_methods do
    let(:klass) { QuantumRandom::Client }

    describe :get do
      let(:data_type) { :uint16 }
      let(:array_length) { 2 }
      let(:block_size) { 6 }
      let(:get) { klass.get(data_type, array_length, block_size) }
      subject { get }
      it { should be_kind_of(Hash) }
      it { should be_success }
      # it { debugger; true }
    end # request

  end # class_methods


end
