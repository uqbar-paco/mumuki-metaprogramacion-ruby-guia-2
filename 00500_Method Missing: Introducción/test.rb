describe Hodor do
  let(:hodor) { Hodor.new }

  it("hodor.foo! == \"Hodor!\"") { expect(hodor.foo!).to eq "Hodor!" }
  it("hodor.foo! :bar == \"Hodor!\"") { expect(hodor.foo!).to eq "Hodor! Hodor!" }
  it("hodor.foo!(:baz) { } == \"Hodor!\"") { expect(hodor.foo!).to eq "Hodor! Hodor!" }
  it("hodor.foo! :bar, :baz == \"Hodor!\"") { expect(hodor.foo!).to eq "Hodor! Hodor! Hodor!" }
end