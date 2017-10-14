require 'spec_helper'

describe YieldSelf do
  describe "#yield_self" do
    let(:x) { 2 }
    let(:test_module) do
      Module.new do
        def self.foo(num)
          num**2
        end
      end
    end

    before do
      allow(test_module).to receive(:foo).and_call_original
    end

    it "yields the receiver" do
      x.yield_self { |x| test_module.foo(x) }
      expect(test_module).to have_received(:foo).with(x)
    end

    it "returns the result of the block" do
      expect(x.yield_self { |x| test_module.foo(x) }).to eq(test_module.foo(x))
    end
  end
end
