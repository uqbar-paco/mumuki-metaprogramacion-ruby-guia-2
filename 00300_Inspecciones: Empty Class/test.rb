class Inspector
  include Inspections
end

class Foo
end

class FooBar
  def m1; end
end
describe "Inspections" do
  let(:inspector) { Inspector.new }

  describe('empty_class?') do
    it "Object no es empty class" do
     expect(inspector.empty_class? Object).to be false
    end

    it "(class Foo; end) es empty class" do
     expect(inspector.empty_class? Foo).to be true
    end

    it "una clase con un sólo método no es empty class" do
     expect(inspector.empty_class? FooBar).to be false
    end
  end

end