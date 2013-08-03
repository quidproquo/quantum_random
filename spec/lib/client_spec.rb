require 'spec_helper'

describe QuantumRandom::Client do

  it { should be }

  describe :class_methods do
    let(:klass) { QuantumRandom::Client }

    describe :get do
      let(:get) { klass.send(:get) }
      subject { get }
      it { should be_success }
      # it { debugger; true }

      context 'parsed_response' do
        let(:parsed_response) { get.parsed_response }
        subject { parsed_response }
        it 'should be success' do
          subject['success'].should == true
        end
        it 'should have data' do
          subject['data'].length.should > 0
          subject['data'][0].should be_kind_of(Integer)
        end
      end

    end # request

  end # class_methods


end
