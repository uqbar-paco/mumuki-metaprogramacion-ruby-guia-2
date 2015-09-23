require 'ostruct'

describe Forwarder do
  class Foo < Forwarder
    def initialize(x)
      @x = x
    end
    def forward_to
      @x
    end

    def bar
      "bar"
    end
  end
  let(:baz) { OpenStruct.new(foo: 2, bar: 4, baz:5) }

  it { expect(Foo.new(baz).baz).to eq 5 }
  it { expect(Foo.new(baz).bar).to eq "bar" }
  it { expect(Foo.new(baz).baz).to eq 5 }
  it { expect { Foo.new(nil).baz }.to raise NoMethodError }
end